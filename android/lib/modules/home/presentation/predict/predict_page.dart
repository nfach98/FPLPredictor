import 'package:caretaker_fpl/modules/home/presentation/predict/notifiers/predict_notifier.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/row_position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../common/config/themes.dart';
import '../../../../injection_container.dart';
import '../../../squad/presentation/widgets/item_player_list.dart';
import '../../../squad/presentation/widgets/squad_tab.dart';
import '../../domain/entities/information_entity.dart';
import '../../domain/entities/team_entity.dart';

class PredictPage extends StatefulWidget {
  final List<TeamEntity>? teams;
  final List<InformationEntity>? trivias;

  const PredictPage({Key? key, this.teams, this.trivias}) : super(key: key);

  @override
  State<PredictPage> createState() => _PredictPageState();
}

class _PredictPageState extends State<PredictPage> {
  late PredictNotifier _predictNotifier;

  @override
  void initState() {
    super.initState();
    _predictNotifier = sl<PredictNotifier>();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _predictNotifier.getPlayers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _predictNotifier,
      builder: (_, child) => Consumer<PredictNotifier>(
        builder: (_, notifier, child) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(2).r,
              margin: const EdgeInsets.all(12).r,
              decoration: BoxDecoration(
                color: FplTheme.colors.purple,
                borderRadius: BorderRadius.circular(4).r,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SquadTab(
                      onTap: () => notifier.setActiveTab(0),
                      text: 'Pitch View',
                      isSelected: notifier.activeTab == 0,
                    ),
                  ),
                  Expanded(
                    child: SquadTab(
                      onTap: () => notifier.setActiveTab(1),
                      text: 'List View',
                      isSelected: notifier.activeTab == 1,
                    ),
                  ),
                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(12).r,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Players selected',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            '${notifier.selected.where((e) => e != null).length} / 15',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: FplTheme.colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Money Remaining',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            notifier.money.toStringAsFixed(1),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: FplTheme.colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (_, constraint) {
                  if (notifier.activeTab == 0) {
                    return Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: FractionallySizedBox(
                            widthFactor: 1.0,
                            child: SvgPicture.asset(
                              'assets/images/bg_pitch.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1,
                          child: FractionallySizedBox(
                            widthFactor: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RowPosition(players: notifier.selected.sublist(0, 2)),
                                RowPosition(players: notifier.selected.sublist(2, 7)),
                                RowPosition(players: notifier.selected.sublist(7, 12)),
                                RowPosition(players: notifier.selected.sublist(12, 15)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListView.separated(
                      itemCount: notifier.selected.where((e) => e != null).length,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.all(8).r,
                        child: ItemPlayerList(
                          player: notifier.selected[index],
                          onTap: () { },
                        ),
                      ),
                      separatorBuilder: (_, index) => Container(
                        height: 1.h,
                        color: FplTheme.colors.gray,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
