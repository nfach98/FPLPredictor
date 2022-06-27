import os
import sys
import numpy as np
import pandas as pd
import json
import pulp
import random
import requests
from flask import Flask, jsonify, request
from sklearn.metrics import mean_squared_error
from sklearn.preprocessing import MinMaxScaler

sys.path.insert(0, os.path.dirname(__file__))

app = Flask(__name__)


@app.route('/recommend')
def recommend():
    seasons = ['2016-17', '2017-18', '2018-19', '2019-20', '2020-21', '2021-22']
    scaler = MinMaxScaler(feature_range=(0, 1))
    regex_exc = "loan|transfer|join|left|contract|retire"

    df_aggregated = pd.read_csv('datasets/aggregated.csv')
    df_raw = pd.read_csv('datasets/player_raw.csv')

    valids = df_aggregated['id_player'].values.tolist()
    valids.sort()

    df_teams = pd.read_csv('datasets/master_team_list.csv')
    df_teams = df_teams[df_teams['season'] == '2021-22']

    df_master = df_aggregated[df_aggregated['id_player'].isin(valids)].copy()
    df_master = df_master.sort_values(by="id_player")
    df_master = df_master.fillna(0)
    df_master["actual"] = df_master.iloc[:, 193:231].sum(axis=1, numeric_only=True)
    # master.rename(columns={0: 'id_player', 1: 'name', 230: 'team', 231: 'position'}, inplace=True)

    # define input sequence
    season_start = 0
    season_end = 5
    col_shift = 3
    col_start = 38 * season_start + col_shift  # 2016-17
    col_end = 38 * (season_end + 1) + col_shift  # 2021-22
    gw_start = 1
    gw_end = 38

    data_train = []
    data_test = []
    data_all = []
    for i, row in df_master.iterrows():
        data_train.append(row[col_start: (col_end - 38)].values.reshape(38 * season_end, 1))
        data_test.append(row[(col_end - 38): col_end].values.reshape(38, 1))
        data_all.append(row[col_start: col_end].values.reshape(38 * (season_end - season_start + 1), 1))

    # horizontally stack columns
    df_train = np.hstack(tuple(data_train))
    df_test = np.hstack(tuple(data_test))
    df_all = np.hstack(tuple(data_all))

    scaled_train = scale(scaler, df_train)
    scaled_test = scale(scaler, df_test)
    scaled_all = scale(scaler, df_all)

    n_steps = 1
    X, y = split_sequences(scaled_train, n_steps)
    n_features = X.shape[2]

    fav = request.args.get('teams')
    if isinstance(fav, str):
        fav = fav.split(',')
        fav = list(map(int, fav))

    prediction(
        gw_start=gw_start, gw_end=gw_end,
        n_steps=n_steps, n_features=n_features, season_end=season_end, scaler=scaler,
        df_scaled_test=scaled_test, df_scaled_all=scaled_all, df_test=df_test, df_all=df_all, df_master=df_master
    )
    starting, sub = selection(
        seasons=seasons, gw_start=gw_start, gw_end=gw_end, regex_exc=regex_exc,
        df_teams=df_teams, df_raw=df_raw, df_master=df_master, col_shift=col_shift, fav_team=fav
    )
    results_starting = starting.apply(lambda x: json.loads(x.to_json()), axis=1).tolist()
    results_sub = sub.apply(lambda x: json.loads(x.to_json()), axis=1).tolist()
    return jsonify({
        "starting": results_starting,
        "sub": results_sub,
        "total_predicted": sum(starting['predicted'].values),
    })


@app.route('/informations')
def info():
    facts = pd.read_csv('datasets/facts.csv', sep=';')
    records = pd.read_csv('datasets/records.csv', sep=';')
    result_facts = facts.apply(lambda x: json.loads(x.to_json()), axis=1).tolist()
    result_records = records.apply(lambda x: json.loads(x.to_json()), axis=1).tolist()
    random.shuffle(result_facts)
    random.shuffle(result_records)
    return jsonify({
        "facts": result_facts,
        "records": result_records,
    })


@app.route('/teams')
def teams():
    teams = pd.read_csv('datasets/master_team_list.csv')
    teams = teams[teams['season'] == '2021-22']
    result_teams = teams.apply(lambda x: json.loads(x.to_json()), axis=1).tolist()
    return jsonify({
        "teams": result_teams
    })


@app.route('/players')
def players():
    limit = 12 if request.args.get('limit') is None else int(request.args.get('limit'))
    page = 1 if request.args.get('page') is None else int(request.args.get('page'))
    team = request.args.get('team')
    pos = request.args.get('position')
    search = request.args.get('search')

    regex_exc = "loan|transfer|join|left|contract|retire"

    df_aggregated = pd.read_csv('datasets/aggregated.csv')
    df_aggregated = df_aggregated.sort_values(by="id_player")
    df_raw = pd.read_csv('datasets/player_raw.csv')

    df = df_raw[(df_raw["season"] == '2021-22') & (
            df_raw['news'].str.contains(regex_exc, regex=True, case=False, na=False) == False)]
    valids = df['id_player'].values.tolist()

    df = df_aggregated[df_aggregated['id_player'].isin(valids)].copy()
    if pos is not None:
        df = df[df["position"] == pos]
    if team is not None:
        df = df[df["team_id"] == team]
    if search is not None:
        df = df[df["name"].str.contains(search, case=False)]
    df = df.iloc[(page - 1) * limit:page * limit]
    df = df[["id_player", "name", "web_name", "code", "position", "now_cost", "team", "team_id", "shirt"]]

    result_players = df.apply(lambda x: json.loads(x.to_json()), axis=1).tolist()
    return jsonify({
        "players": result_players,
        "page": page,
        "prev": page - 1,
        "next": page + 1,
        "total": limit,
    })


def split_sequences(sequences, n_steps):
    X, y = list(), list()
    for i in range(len(sequences)):
        # find the end of this pattern
        end_ix = i + n_steps
        # check if we are beyond the dataset
        if end_ix > len(sequences) - 1:
            break
        # gather input and output parts of the pattern
        seq_x, seq_y = sequences[i:end_ix, :], sequences[end_ix, :]
        X.append(seq_x)
        y.append(seq_y)
    return np.array(X), np.array(y)


def scale(scaler, dataset):
    scaler.fit(dataset)
    return scaler.transform(dataset)


def inverse_scale(scaler, dataset):
    return scaler.inverse_transform(dataset)


def inverse_difference(history, yhat, interval=1):
    return yhat + history[-interval]


def selection_summary(dataset):
    dataset = dataset.sort_values(by="predicted 2021-22", ascending=False)
    print("Max Predicted total:", sum(dataset['predicted 2021-22'].values[:-4]))
    print("Max Actual total:", sum(dataset['actual'].values[:-4]))
    print("Price total:", "£" + str(sum(dataset['now_cost'].values)))


def prediction(gw_start, gw_end, n_steps, n_features, season_end, scaler,
               df_scaled_test, df_scaled_all, df_test, df_all, df_master):
    # demonstrate prediction
    preds_scaled = []
    preds = []
    index_end_2021 = 38 * season_end - 1

    for i in range(gw_start - 1, gw_end):
        x_input = np.array([df_scaled_all[:][index_end_2021 - n_steps + i: index_end_2021 + i] if i == 0 else np.array(
            preds_scaled[i - 1])])
        x_input = x_input.reshape((1, n_steps, n_features)).astype(np.float32)
        json_response = requests.post(
            "https://fpl-predict.herokuapp.com/v1/models/fpl:predict",
            data=json.dumps({"signature_name": "serving_default", "instances": x_input.tolist()}),
            headers={"content-type": "application/json"})
        yhat = json.loads(json_response.text)['predictions']
        preds_scaled.append(yhat[0])
        yhat = inverse_scale(scaler, yhat[0])
        yhat = inverse_difference(df_all, yhat, len(df_scaled_test) - i)
        preds.append(yhat[0])

    preds = np.array(preds)
    preds_t = preds.transpose()
    totals = [sum(p) for p in preds_t]
    df_master["predicted"] = np.round(totals, 3)

    print('Test MSE: %.3f' % mean_squared_error(df_test, preds))


def selection(seasons, regex_exc, gw_start, gw_end, df_raw, df_teams, df_master, col_shift, fav_team=None):
    if fav_team is None:
        fav_team = []

    df = df_raw[(df_raw["season"] == seasons[-1]) & (
            df_raw['news'].str.contains(regex_exc, regex=True, case=False, na=False) == False)]
    valids = df['id_player'].values.tolist()

    for v in valids:
        df = df_raw[(df_raw["id_player"] == v) & (df_raw["season"].isin(seasons[:-1])) & (
                df_raw['news'].str.contains(regex_exc, regex=True, case=False, na=False) == False)]
        if df.shape[0] < 1:
            valids.remove(v)

    df = df_master[df_master['id_player'].isin(valids)].copy()
    df["actual"] = df_master.iloc[:, 189 + col_shift + gw_start:189 + col_shift + gw_end].sum(axis=1)

    # define linear optimalization
    solutions = []
    selected = []

    for sol in range(4):
        df_new = df[~df["id_player"].isin(selected)].copy()

        prob = pulp.LpProblem('MaxPoints', pulp.LpMaximize)
        pts = list(df_new["predicted"])
        ids = list(df_new["id_player"])
        costs = list(df_new["now_cost"])

        fav_team = []
        constraint_team = [[1 if df_new.iloc[i]['team'] == t else 0 for i in range(len(pts))] for t in df_teams["team_name"].values]
        pos_gk = [1 if df_new.iloc[i]['position'] == "GK" else 0 for i in range(len(pts))]
        pos_def = [1 if df_new.iloc[i]['position'] == "DEF" else 0 for i in range(len(pts))]
        pos_mid = [1 if df_new.iloc[i]['position'] == "MID" else 0 for i in range(len(pts))]
        pos_fwd = [1 if df_new.iloc[i]['position'] == "FWD" else 0 for i in range(len(pts))]

        pts_vars = [pulp.LpVariable(str(i), lowBound = 0, upBound = 1, cat='Binary') for i in ids]
        prob += pulp.lpSum([pts[i] * pts_vars[i] for i in range(len(pts))])
        # prob += pulp.lpSum([pts[i] * pts_vars[i] for i in range(len(pts))]) <= pts_max - i * i, "MaxPts"
        prob += pulp.lpSum([costs[i] * pts_vars[i] for i in range(len(pts))]) <= 100, "TotalCost"
        prob += pulp.lpSum([pts_vars[i] for i in range(len(pts))]) == 15, "TotalPlayer"
        prob += pulp.lpSum([pos_gk[i] * pts_vars[i] for i in range(len(pts))]) == 2, "TotalGk"
        prob += pulp.lpSum([pos_def[i] * pts_vars[i] for i in range(len(pts))]) == 5, "TotalDef"
        prob += pulp.lpSum([pos_mid[i] * pts_vars[i] for i in range(len(pts))]) == 5, "TotalMid"
        prob += pulp.lpSum([pos_fwd[i] * pts_vars[i] for i in range(len(pts))]) == 3, "TotalFwd"
        for index, c in enumerate(constraint_team):
            if index not in fav_team:
                prob += pulp.lpSum([c[i] * pts_vars[i] for i in range(len(pts))]) <= 3, "MaxTeam_" + str(index)
            else:
                prob += pulp.lpSum([c[i] * pts_vars[i] for i in range(len(pts))]) == 3, "MaxTeam_" + str(index)
        
        prob.solve()
        s = [int(var.name) for var in prob.variables() if var.value() == 1]
        n_len = random.randint(1, 10)
        selected = selected + s[:-n_len]
        solutions.append((s, prob.objective.value()))

    # squad select
    n_solution = random.randint(0, 3)
    players = df[df["id_player"].isin(solutions[n_solution][0])].copy()
    players = players[
        ["id_player", "name", "web_name", "code", "team", "team_id", "position", "now_cost", "shirt", "actual", "predicted"]]

    # starting XI
    prob2 = pulp.LpProblem('MaxPoints', pulp.LpMaximize)
    pts2 = list(players["predicted"])
    ids2 = list(players["id_player"])

    pos_gk = [1 if players.iloc[i]['position'] == "GK" else 0 for i in range(len(pts2))]
    pos_def = [1 if players.iloc[i]['position'] == "DEF" else 0 for i in range(len(pts2))]
    pos_mid = [1 if players.iloc[i]['position'] == "MID" else 0 for i in range(len(pts2))]
    pos_fwd = [1 if players.iloc[i]['position'] == "FWD" else 0 for i in range(len(pts2))]

    pts_vars2 = [pulp.LpVariable(str(i), lowBound=0, upBound=1, cat='Binary') for i in ids2]
    prob2 += pulp.lpSum([pts2[i] * pts_vars2[i] for i in range(len(pts2))])
    prob2 += pulp.lpSum([pts_vars2[i] for i in range(len(pts2))]) == 11, "TotalPlayer"
    prob2 += pulp.lpSum([pos_gk[i] * pts_vars2[i] for i in range(len(pts2))]) == 1, "TotalGk"
    prob2 += pulp.lpSum([pos_def[i] * pts_vars2[i] for i in range(len(pts2))]) >= 3, "TotalDef"
    prob2 += pulp.lpSum([pos_mid[i] * pts_vars2[i] for i in range(len(pts2))]) >= 1, "TotalMid"
    prob2 += pulp.lpSum([pos_fwd[i] * pts_vars2[i] for i in range(len(pts2))]) >= 1, "TotalFwd"
    prob2.solve()

    selected2 = [int(var.name) for var in prob2.variables() if var.value() == 1]
    starting = df[df["id_player"].isin(selected2)].copy()
    starting = starting[
        ["id_player", "name", "web_name", "code", "team", "team_id", "position", "now_cost", "shirt", "actual", "predicted"]]

    # subs
    sub = players[~players["id_player"].isin(starting["id_player"].values)].copy()

    return starting, sub
