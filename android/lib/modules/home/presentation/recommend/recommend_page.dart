import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/constants/route_constants.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/trivia_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:toast/toast.dart';

import '../../../loading/presentation/arguments/loading_page_arguments.dart';
import '../home/notifiers/home_notifier.dart';
import '../widgets/item_team.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    List<int> selectedTeams = context.select((HomeNotifier n) => n.selectedTeams);
    List<TeamEntity>? teams = context.select((HomeNotifier n) => n.teams);
    List<TriviaEntity>? trivias = context.select((HomeNotifier n) => n.trivias);

    return Column(
      children: [
        Material(
          elevation: 4.r,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0).r,
                child: Text(
                  'Choose up to 5 favorite team',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(height: 4.h),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16).r,
                child: Text(
                  'Recommendation would prioritize players from your favorite teams',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            itemCount: teams?.length ?? 21,
            itemBuilder: (_, index) {
              if (teams == null) {
                return Shimmer.fromColors(
                  highlightColor: FplTheme.colors.gray,
                  baseColor: Colors.grey,
                  child: ItemTeam(
                    isSelected: false,
                    onTap: () { },
                    team: null,
                  ),
                );
              }

              if (index == 0) {
                return ItemTeam(
                  isSelected: selectedTeams.contains(index),
                  onTap: () {
                    if (!selectedTeams.contains(index)) {
                      context.read<HomeNotifier>().clearTeam();
                      context.read<HomeNotifier>().addTeam(index);
                    }
                  },
                  team: teams[index],
                );
              }

              return ItemTeam(
                isSelected: selectedTeams.contains(teams[index].id),
                onTap: () {
                  if (!selectedTeams.contains(teams[index].id)) {
                    if (selectedTeams.length == 5) {
                      ToastContext().init(context);
                      Toast.show(
                        'You have already choosen 5 teams',
                        duration: Toast.lengthShort,
                        backgroundColor: FplTheme.colors.purple,
                        textStyle: Theme.of(context).textTheme.bodyText1,
                        gravity: Toast.bottom,
                      );
                    } else {
                      context.read<HomeNotifier>().removeTeam(0);
                      context.read<HomeNotifier>().addTeam(teams[index].id ?? 0);
                    }
                  } else {
                    if (selectedTeams.length == 1) {
                      context.read<HomeNotifier>().addTeam(0);
                    }
                    context.read<HomeNotifier>().removeTeam(teams[index].id ?? 0);
                  }
                },
                team: teams[index],
              );
            },
          ),
        ),
        if (teams != null && trivias != null) Material(
          elevation: 4.r,
          child: Padding(
            padding: EdgeInsets.all(12.r),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.loading,
                    arguments: LoadingPageArguments(
                      'recommend',
                      teams: selectedTeams,
                      trivias: trivias,
                    ),
                  );
                },
                child: const Text('Recommend'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
