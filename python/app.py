import numpy as np
import pandas as pd
import pulp as p
import json
import random
from flask import Flask, jsonify, make_response, request
from sklearn.metrics import mean_squared_error
from sklearn.preprocessing import MinMaxScaler
from tensorflow import keras

app = Flask(__name__)


@app.route('/recommend/', methods=['GET'])
def predict():
    prediction()
    starting, sub = selection(1, 38)
    results_starting = starting.apply(lambda x: json.loads(x.to_json()), axis=1)
    results_sub = sub.apply(lambda x: json.loads(x.to_json()), axis=1)
    response = make_response(
        jsonify(
            {
                "starting": results_starting.tolist(),
                "sub": results_sub.tolist(),
                "total_predicted": sum(starting['predicted'].values),
            }
        ),
        200,
    )
    response.headers["Content-Type"] = "application/json"
    return response


@app.route('/informations/', methods=['GET'])
def facts():
    result_facts = facts.apply(lambda x: json.loads(x.to_json()),axis=1).tolist()
    result_records = records.apply(lambda x: json.loads(x.to_json()),axis=1).tolist()
    random.shuffle(result_facts)
    random.shuffle(result_records)
    response = make_response(
        jsonify(
            {
                "facts": result_facts,
                "records": result_records
            }
        ),
        200,
    )
    response.headers["Content-Type"] = "application/json"
    return response


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


def get_sequences(name):
    return master[master['name'] == name].iloc[:, 3:231].values[0]


def scale(dataset):
    scaler.fit(dataset)
    return scaler.transform(dataset)


def inverse_scale(dataset):
    return scaler.inverse_transform(dataset)


def inverse_difference(history, yhat, interval=1):
	return yhat + history[-interval]


def selection_summary(dataset):
    dataset = dataset.sort_values(by="predicted 2021-22", ascending=False)
    print("Max Predicted total:", sum(dataset['predicted 2021-22'].values[:-4]))
    print("Max Actual total:", sum(dataset['actual'].values[:-4]))
    print("Price total:", "£" + str(sum(dataset['now_cost'].values)))


def prediction():
    # demonstrate prediction
    preds_scaled = []
    preds = []
    index_end_2021 = 38 * season_end - 1
    gw_start = 1
    gw_end = 38

    for i in range(gw_start - 1, gw_end):
        x_input = np.array([scaled_all[:][index_end_2021 - n_steps + i : index_end_2021 + i] if i == 0 else np.array(preds_scaled[i - 1])])
        x_input = x_input.reshape((1, n_steps, n_features)).astype(np.float32)
        yhat = model.predict(x_input, batch_size=1)
        preds_scaled.append(yhat[0])
        yhat = inverse_scale(yhat[0])
        yhat = inverse_difference(all, yhat, len(scaled_test)-i)
        preds.append(yhat[0])

    preds = np.array(preds)
    preds_t = preds.transpose()
    totals = [sum(p) for p in preds_t]
    master["predicted"] = np.round(totals, 3) 
    master["ppm"] = master.apply(lambda row: row["predicted"] / 38, axis=1)
    master["cpp"] = master.apply(lambda row: row['now_cost'] / row["predicted"] if row["predicted"] > 0 else 0, axis=1)

    print('Test MSE: %.3f' % mean_squared_error(test, preds))


def selection(gw_start, gw_end):
    # player selection
    import pulp
    import random

    valids = []
    df = raw[(raw["season"] == seasons[-1]) & (raw['news'].str.contains(regex_exc, regex=True, case=False, na=False) == False)]
    valids = df['id_player'].values.tolist()

    for v in valids:
        df = raw[(raw["id_player"] == v) & (raw["season"].isin(seasons[:3])) & (raw['news'].str.contains(regex_exc, regex=True, case=False, na=False) == False)]
        if len(df) < 1:
            valids.remove(v)

    df = master[master['id_player'].isin(valids)].copy()
    df["actual"] = master.iloc[:, 192+gw_start:192+gw_end].sum(axis=1)
    df = df[df["cpp"] > 0]

    # define linear optimalization
    prob = pulp.LpProblem('MaxPoints', pulp.LpMaximize)
    pts = list(df["predicted"])
    ids = list(df["id_player"])
    costs = list(df["now_cost"])
    total_cost = random.randrange(85, 100)

    fav_team = []
    constraint_team = [[1 if df.iloc[i]['team'] == t else 0 for i in range(len(pts))] for t in teams["team_name"].values]
    pos_gk = [1 if df.iloc[i]['position'] == "GK" else 0 for i in range(len(pts))]
    pos_def = [1 if df.iloc[i]['position'] == "DEF" else 0 for i in range(len(pts))]
    pos_mid = [1 if df.iloc[i]['position'] == "MID" else 0 for i in range(len(pts))]
    pos_fwd = [1 if df.iloc[i]['position'] == "FWD" else 0 for i in range(len(pts))]

    pts_vars = [pulp.LpVariable(str(i), lowBound = 0, upBound = 1, cat='Binary') for i in ids]
    prob += pulp.lpSum([pts[i] * pts_vars[i] for i in range(len(pts))])
    prob += pulp.lpSum([costs[i] * pts_vars[i] for i in range(len(pts))]) <= total_cost, "TotalCost"
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
    selected = [int(var.name) for var in prob.variables() if var.value() == 1]
    players = df[df["id_player"].isin(selected)]
    players = players[["id_player", "name", "web_name", "code", "team", "position", "now_cost", "shirt", "actual", "predicted"]]
    
    # starting XI
    prob2 = pulp.LpProblem('MaxPoints', pulp.LpMaximize)
    pts2 = list(players["predicted"])
    ids2 = list(players["id_player"])

    pos_gk = [1 if players.iloc[i]['position'] == "GK" else 0 for i in range(len(pts2))]
    pos_def = [1 if players.iloc[i]['position'] == "DEF" else 0 for i in range(len(pts2))]
    pos_mid = [1 if players.iloc[i]['position'] == "MID" else 0 for i in range(len(pts2))]
    pos_fwd = [1 if players.iloc[i]['position'] == "FWD" else 0 for i in range(len(pts2))]

    pts_vars2 = [pulp.LpVariable(str(i), lowBound = 0, upBound = 1, cat='Binary') for i in ids2]
    prob2 += pulp.lpSum([pts2[i] * pts_vars2[i] for i in range(len(pts2))])
    prob2 += pulp.lpSum([pts_vars2[i] for i in range(len(pts2))]) == 11, "TotalPlayer"
    prob2 += pulp.lpSum([pos_gk[i] * pts_vars2[i] for i in range(len(pts2))]) == 1, "TotalGk"
    prob2 += pulp.lpSum([pos_def[i] * pts_vars2[i] for i in range(len(pts2))]) >= 3, "TotalDef"
    prob2 += pulp.lpSum([pos_mid[i] * pts_vars2[i] for i in range(len(pts2))]) >= 1, "TotalMid"
    prob2 += pulp.lpSum([pos_fwd[i] * pts_vars2[i] for i in range(len(pts2))]) >= 1, "TotalFwd"
    prob2.solve()

    selected2 = [int(var.name) for var in prob2.variables() if var.value() == 1]
    starting = df[df["id_player"].isin(selected2)]
    starting = starting[["id_player", "name", "web_name", "code", "team", "position", "now_cost", "shirt", "actual", "predicted"]]

    # subs
    sub = players[~players["id_player"].isin(starting["id_player"].values)].copy()

    return starting, sub


if __name__ == '__main__':
    model = keras.models.load_model('model/fpl.h5')
    seasons = ['2018-19', '2019-20', '2020-21', '2021-22']
    gws = np.arange(1, 39)
    scaler = MinMaxScaler(feature_range=(0, 1))
    regex_exc = "loan|transfer|join|left|contract|retire"

    facts = pd.read_csv('dataset/facts.csv', sep=';')
    records = pd.read_csv('dataset/records.csv', sep=';')
    aggregated = pd.read_csv('dataset/aggregated.csv')
    raw = pd.read_csv('dataset/player_raw.csv')

    valids = aggregated['id_player'].values.tolist()
    valids.sort()

    teams = pd.read_csv('dataset/master_team_list.csv')
    teams = teams[teams['season'] == '2021-22']

    shirts = [
        'shirt_3',
        'shirt_7',
        'shirt_94',
        'shirt_36',
        'shirt_90',
        'shirt_8',
        'shirt_31',
        'shirt_11',
        'shirt_2',
        'shirt_13',
        'shirt_14',
        'shirt_43',
        'shirt_1',
        'shirt_4',
        'shirt_45',
        'shirt_20',
        'shirt_6',
        'shirt_57',
        'shirt_21',
        'shirt_39',
    ]

    df_shirts = []
    df_codes = []
    df_costs = []
    df_web = []

    for v in valids:
        df = raw[raw["id_player"] == v].iloc[-1]
        df_shirts.append(shirts[df['team'] - 1])
        df_codes.append(df['code'])
        df_costs.append(df['now_cost'] / 10)
        df_web.append(df['web_name'])

    master = aggregated[aggregated['id_player'].isin(valids)].copy()
    master = master.sort_values(by="id_player")
    master = master.fillna(0)
    master["shirt"] = df_shirts
    master["code"] = df_codes
    master["now_cost"] = df_costs
    master["web_name"] = df_web
    master["actual"] = master.iloc[:, 193:231].sum(axis=1, numeric_only=True)
    master["actual before 2021-22"] = master.iloc[:, 2:193].sum(axis=1)
    master.rename(columns={0: 'id_player', 1: 'name', 230: 'team', 231: 'position'}, inplace=True)

    # define input sequence
    season_start = 0
    season_end = 5
    col_shift = 2
    col_start = 38 * season_start + col_shift  # 2016-17
    col_end = 38 * (season_end + 1) + col_shift  # 2021-22

    data_train = []
    data_test = []
    data_all = []
    for i, row in master.iterrows():
        data_train.append(row[col_start: (col_end - 38)].values.reshape(38 * season_end, 1))
        data_test.append(row[(col_end - 38): col_end].values.reshape(38, 1))
        data_all.append(row[col_start: col_end].values.reshape(38 * (season_end - season_start + 1), 1))

    # horizontally stack columns
    train = np.hstack(tuple(data_train))
    train_list = list(tuple(data_train))

    test = np.hstack(tuple(data_test))
    test_list = list(tuple(data_test))

    all = np.hstack(tuple(data_all))
    all_list = list(tuple(data_all))

    scaled_train = scale(train)
    scaled_test = scale(test)
    scaled_all = scale(all)

    # choose a number of time steps
    n_steps = 1
    n_future = 38

    # convert into input/output
    X, y = split_sequences(scaled_train, n_steps)
    X_test, y_test = split_sequences(scaled_test, n_steps)

    # the dataset knows the number of features, e.g. 2
    n_features = X.shape[2]

    app.run(debug=True, host='0.0.0.0')
