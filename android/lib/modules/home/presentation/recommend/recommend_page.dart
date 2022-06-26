import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:caretaker_fpl/modules/home/presentation/recommend/widgets/item_team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

import '../../../../injection_container.dart';
import 'notifier/recommend_notifier.dart';

class RecommendPage extends StatefulWidget {
  final List<TeamEntity>? teams;

  const RecommendPage({Key? key, this.teams}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  late RecommendNotifier _recommendNotifier;

  @override
  void initState() {
    super.initState();
    _recommendNotifier = sl<RecommendNotifier>();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _recommendNotifier.addTeam(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _recommendNotifier,
      builder: (_, child) => Consumer<RecommendNotifier>(
        builder: (_, notifier, child) {
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
                  itemCount: widget.teams?.length ?? 0,
                  itemBuilder: (_, index) => ItemTeam(
                    isSelected: notifier.selectedTeams.contains(index),
                    onTap: () {
                      if (!notifier.selectedTeams.contains(index)) {
                        if (index == 0) {
                          _recommendNotifier.clearTeam();
                          _recommendNotifier.addTeam(index);
                        } else {
                          if (notifier.selectedTeams.length == 5) {
                            ToastContext().init(context);
                            Toast.show(
                              'You have already choosen 5 teams',
                              duration: Toast.lengthShort,
                              backgroundColor: Theme.of(context).primaryColor,
                              textStyle: Theme.of(context).textTheme.bodyText1
                                  ?.copyWith(color: FplTheme.colors.white),
                              gravity: Toast.bottom,
                            );
                          } else {
                            _recommendNotifier.removeTeam(0);
                            _recommendNotifier.addTeam(index);
                          }
                        }
                      } else if (index != 0) {
                        _recommendNotifier.removeTeam(index);
                        if (notifier.selectedTeams.isEmpty) {
                          _recommendNotifier.addTeam(0);
                        }
                      }
                    },
                    team: widget.teams?[index],
                  ),
                ),
              ),
              Material(
                elevation: 4.r,
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: TextButton(
                      onPressed: () {

                      },
                      child: const Text('Recommend'),
                    ),
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
