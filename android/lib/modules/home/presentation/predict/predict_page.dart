import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/row_position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../common/config/themes.dart';
import '../../../../common/constants/route_constants.dart';
import '../../../loading/domain/entities/player_entity.dart';
import '../../../loading/presentation/arguments/loading_page_arguments.dart';
import '../../domain/entities/trivia_entity.dart';
import '../../domain/entities/team_entity.dart';
import '../home/notifiers/home_notifier.dart';

class PredictPage extends StatefulWidget {
  const PredictPage({Key? key}) : super(key: key);

  @override
  State<PredictPage> createState() => _PredictPageState();
}

class _PredictPageState extends State<PredictPage> {
  @override
  Widget build(BuildContext context) {
    List<PlayerEntity?> selected = context.select((HomeNotifier n) => n.selectedPlayers);
    int numSelected = selected.where((e) => e != null).length;
    double money = context.select((HomeNotifier n) => n.money);
    List<TriviaEntity>? trivias = context.select((HomeNotifier n) => n.trivias);

    return Column(
      children: [
        // Container(
        //   padding: const EdgeInsets.all(2).r,
        //   margin: const EdgeInsets.all(12).r,
        //   decoration: BoxDecoration(
        //     color: FplTheme.colors.purple,
        //     borderRadius: BorderRadius.circular(4).r,
        //   ),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: SquadTab(
        //           onTap: () => notifier.setActiveTab(0),
        //           text: 'Pitch View',
        //           isSelected: context.select((HomeNotifier n) => n.).activeTab == 0,
        //         ),
        //       ),
        //       Expanded(
        //         child: SquadTab(
        //           onTap: () => notifier.setActiveTab(1),
        //           text: 'List View',
        //           isSelected: notifier.activeTab == 1,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        FractionallySizedBox(
          widthFactor: 1.0,
          child: Padding(
            padding: const EdgeInsets.all(4).r,
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
                        '$numSelected / 15',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: numSelected < 15
                            ? FplTheme.colors.red
                            : FplTheme.colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 4.w),
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
                        money.toStringAsFixed(1),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: money > 0
                            ? FplTheme.colors.green
                            : FplTheme.colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (_, constraint) {
              return SingleChildScrollView(
                child: Stack(
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
                            RowPosition(
                              players: selected.sublist(0, 2),
                              position: 'GK',
                            ),
                            RowPosition(
                              players: selected.sublist(2, 7),
                              position: 'DEF',
                            ),
                            RowPosition(
                              players: selected.sublist(7, 12),
                              position: 'MID',
                            ),
                            RowPosition(
                              players: selected.sublist(12, 15),
                              position: 'FWD',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );

              // if (notifier.activeTab == 0) {
              //   return SingleChildScrollView(
              //     child: Stack(
              //       children: [
              //         AspectRatio(
              //           aspectRatio: 1,
              //           child: FractionallySizedBox(
              //             widthFactor: 1.0,
              //             child: SvgPicture.asset(
              //               'assets/images/bg_pitch.svg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         AspectRatio(
              //           aspectRatio: 1,
              //           child: FractionallySizedBox(
              //             widthFactor: 1,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 RowPosition(
              //                   players: selected.sublist(0, 2),
              //                   position: 'GK',
              //                 ),
              //                 RowPosition(
              //                   players: selected.sublist(2, 7),
              //                   position: 'DEF',
              //                 ),
              //                 RowPosition(
              //                   players: selected.sublist(7, 12),
              //                   position: 'MID',
              //                 ),
              //                 RowPosition(
              //                   players: selected.sublist(12, 15),
              //                   position: 'FWD',
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   );
              // } else {
              //   return ListView.separated(
              //     itemCount: selected.where((e) => e != null).length,
              //     itemBuilder: (_, index) => Padding(
              //       padding: const EdgeInsets.all(8).r,
              //       child: ItemPlayerList(
              //         player: selected.where((e) =>
              //         e != null).toList()[index],
              //         onTap: () { },
              //       ),
              //     ),
              //     separatorBuilder: (_, index) => Container(
              //       height: 1.h,
              //       color: FplTheme.colors.gray,
              //     ),
              //   );
              // }
            },
          ),
        ),
        if (selected.where((e) => e != null).length == 15) Material(
          elevation: 4.r,
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.loading,
                    arguments: LoadingPageArguments(
                      'predict',
                      players: selected.map((e) => e?.id ?? 0).toList(),
                      trivias: trivias,
                    ),
                  );
                },
                child: const Text('Predict'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
