import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:caretaker_fpl/modules/squad/presentation/notifiers/squad_notifier.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DialogPlayer extends StatelessWidget {
  final PlayerEntity player;
  final int? codeCaptain;
  final Function()? onSetCaptain;
  final bool isShowCaptain;

  const DialogPlayer({Key? key, required this.player, this.codeCaptain, this.onSetCaptain, this.isShowCaptain = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // color: FplTheme.colors.white,
            margin: const EdgeInsets.all(20).r,
            decoration: BoxDecoration(
              gradient: FplTheme.gradients.blueLavenderGradient
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/bg_fpl_new_half.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  )
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.white
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12).r,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (player != null) Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/logo_pl_long.png',
                                height: context.screenWidth * 0.1,
                                fit: BoxFit.contain,
                              ),
                              const Spacer(),
                              SizedBox(
                                width: context.screenWidth * 0.1,
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Icon(
                                      Icons.close_rounded,
                                      color: FplTheme.colors.dark,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.h),
                          AspectRatio(
                            aspectRatio: 16/8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4).r,
                              child: Stack(
                                children: [
                                  // Positioned(
                                  //   left: 0,
                                  //   top: 0,
                                  //   right: 0,
                                  //   bottom: 0,
                                  //   child: Container(
                                  //     color: FplTheme.colors.dark,
                                  //   ),
                                  // ),
                                  // Positioned(
                                  //   left: 0,
                                  //   top: 0,
                                  //   right: 0,
                                  //   bottom: 0,
                                  //   child: Image.asset(
                                  //     'assets/images/bg_heading.png',
                                  //     color: Theme.of(context).primaryColor,
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0).r,
                                    child: Row(
                                      children: [
                                        AspectRatio(
                                          aspectRatio: 11/14,
                                          child: CachedNetworkImage(
                                            imageUrl: 'https://resources.premierleague.com/premierleague/photos/players/110x140/p${player?.code}.png',
                                            errorWidget: (_, url, error) => CachedNetworkImage(
                                              imageUrl: 'https://resources.premierleague.com/premierleague/photos/players/110x140/Photo-Missing.png',
                                            ),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.all(6).r,
                                                decoration: BoxDecoration(
                                                    color: FplTheme.colors.dark,
                                                    borderRadius: BorderRadius.vertical(
                                                      bottom: const Radius.circular(8).r,
                                                    )
                                                ),
                                                child: getPosition(
                                                  context,
                                                  player?.position ?? '',
                                                ),
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                player?.name ?? '',
                                                overflow: TextOverflow.clip,
                                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              Text(
                                                player?.team ?? '',
                                                overflow: TextOverflow.clip,
                                                style: Theme.of(context).textTheme.bodyText2,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(height: 12.h),
                          Material(
                            elevation: 4.r,
                            borderRadius: BorderRadius.circular(8).r,
                            color: FplTheme.colors.white.withOpacity(0.8),
                            child: Container(
                              padding: const EdgeInsets.all(8).r,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Price',
                                          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '£${player.cost}',
                                          style: Theme.of(context).textTheme.bodyText2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Actual',
                                          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '${player.ptsActual} pts',
                                          style: Theme.of(context).textTheme.bodyText2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Predicted',
                                          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '${player.ptsPredicted} pts',
                                          style: Theme.of(context).textTheme.bodyText2,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          if (codeCaptain != player.code && isShowCaptain) FractionallySizedBox(
                            widthFactor: 1,
                            child: Padding(
                              padding: EdgeInsets.only(top: 12.h),
                              child: TextButton(
                                onPressed: () {
                                  if (onSetCaptain != null) {
                                    onSetCaptain!();
                                  }
                                },
                                child: const Text('Select As Captain'),
                              ),
                            ),
                          ),
                          // SizedBox(height: 20.h),
                          // Text(
                          //   'Points Graph',
                          //   style: Theme.of(context).textTheme.headline3,
                          // ),
                          // FractionallySizedBox(
                          //     widthFactor: 1,
                          //     child: AspectRatio(
                          //       aspectRatio: 2,
                          //       child: LineChart(
                          //         LineChartData(
                          //           lineTouchData: LineTouchData(
                          //             handleBuiltInTouches: true,
                          //             touchTooltipData: LineTouchTooltipData(
                          //               tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
                          //
                          //             ),
                          //           ),
                          //           gridData: FlGridData(show: false),
                          //           titlesData: FlTitlesData(
                          //             bottomTitles: AxisTitles(
                          //               sideTitles: SideTitles(
                          //                 showTitles: true,
                          //                 reservedSize: 24.w,
                          //                 interval: 5,
                          //                 getTitlesWidget: (i, meta) {
                          //                   return SideTitleWidget(
                          //                     axisSide: meta.axisSide,
                          //                     child: Text(
                          //                         i.toInt().toString(),
                          //                         style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          //                             fontSize: 8.0
                          //                         )
                          //                     ),
                          //                   );
                          //                 },
                          //               ),
                          //             ),
                          //             rightTitles: AxisTitles(
                          //               sideTitles: SideTitles(showTitles: false),
                          //             ),
                          //             topTitles: AxisTitles(
                          //               sideTitles: SideTitles(showTitles: false),
                          //             ),
                          //             leftTitles: AxisTitles(
                          //               sideTitles: SideTitles(
                          //                 getTitlesWidget: (i, meta) {
                          //                   if (i == i.roundToDouble()) {
                          //                     return Text(
                          //                       i.round().toString(),
                          //                       style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          //                         fontSize: 8.sp,
                          //                       ),
                          //                       textAlign: TextAlign.center,
                          //                     );
                          //                   }
                          //
                          //                   return Container();
                          //                 },
                          //                 showTitles: true,
                          //                 interval: 5,
                          //                 reservedSize: 24.w,
                          //               ),
                          //             ),
                          //           ),
                          //           borderData: FlBorderData(
                          //             show: true,
                          //             border: const Border(
                          //               bottom: BorderSide(color: Color(0xff4e4965), width: 2),
                          //               left: BorderSide(color: Colors.transparent),
                          //               right: BorderSide(color: Colors.transparent),
                          //               top: BorderSide(color: Colors.transparent),
                          //             ),
                          //           ),
                          //           lineBarsData: [
                          //             LineChartBarData(
                          //               color: FplTheme.colors.green,
                          //               barWidth: 2,
                          //               isStrokeCapRound: true,
                          //               dotData: FlDotData(show: false),
                          //               belowBarData: BarAreaData(show: false),
                          //               spots: player.listActual?.asMap().entries.map(
                          //                       (e) => FlSpot(e.key.toDouble() + 1, e.value)
                          //               ).toList(),
                          //             ),
                          //             LineChartBarData(
                          //               color: FplTheme.colors.red,
                          //               barWidth: 2,
                          //               isStrokeCapRound: true,
                          //               dotData: FlDotData(show: false),
                          //               belowBarData: BarAreaData(
                          //                 show: false,
                          //                 color: const Color(0x00aa4cfc),
                          //               ),
                          //               spots: player.listPredicted?.asMap().entries.map(
                          //                       (e) => FlSpot(
                          //                     e.key.toDouble() + 1,
                          //                     double.parse(e.value.toStringAsFixed(2)),
                          //                   )
                          //               ).toList(),
                          //             ),
                          //           ],
                          //           minX: 1,
                          //           maxX: 38,
                          //         ),
                          //         swapAnimationDuration: const Duration(milliseconds: 250),
                          //         swapAnimationCurve: Curves.linear,
                          //       ),
                          //     )
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getPosition(BuildContext context, String position) {
    switch(position) {
      case 'GK':
        return Container(
          color: FplTheme.colors.dark,
          child: Text(
            'Goalkeeper',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: FplTheme.colors.blue,
                fontWeight: FontWeight.w600
            ),
          ),
        );
      case 'DEF':
        return Container(
          color: FplTheme.colors.dark,
          child: Text(
            'Defender',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: FplTheme.colors.blue,
                fontWeight: FontWeight.w600
            ),
          ),
        );
      case 'MID':
        return Container(
          color: FplTheme.colors.dark,
          child: Text(
            'Midfielder',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: FplTheme.colors.blue,
                fontWeight: FontWeight.w600
            ),
          ),
        );
      case 'FWD':
        return Container(
          color: FplTheme.colors.dark,
          child: Text(
            'Forward',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: FplTheme.colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      default:
        return Container();
    }
  }
}
