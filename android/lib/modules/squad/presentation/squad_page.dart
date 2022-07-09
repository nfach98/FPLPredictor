import 'dart:io';
import 'dart:typed_data';

import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/dialog_player.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/item_player_list.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/item_player_pitch.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/row_position.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/squad_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:toast/toast.dart';

import '../../../common/widget/premier_league_loading.dart';
import '../../../injection_container.dart';
import 'arguments/loading_page_arguments.dart';
import 'notifiers/squad_notifier.dart';

class SquadPage extends StatefulWidget {
  final SquadPageArguments argument;

  const SquadPage({Key? key, required this.argument}) : super(key: key);

  @override
  State<SquadPage> createState() => _SquadPageState();
}

class _SquadPageState extends State<SquadPage> {
  late SquadNotifier _squadNotifier;
  late ScreenshotController _screenshotController;

  @override
  void initState() {
    super.initState();
    _squadNotifier = sl<SquadNotifier>();
    _screenshotController = ScreenshotController();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if (widget.argument.starting != null) {
        _squadNotifier.setStarting(widget.argument.starting!);
      }
      if (widget.argument.sub != null) {
        _squadNotifier.setSub(widget.argument.sub!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _squadNotifier,
      builder: (_, child) => Consumer<SquadNotifier>(
        builder: (_, notifier, child) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Squad',
              style: Theme.of(context).textTheme.headline2,
            ),
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: FplTheme.gradients.blueLavenderGradient
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/bg_fpl_new_half.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            // backgroundColor: FplTheme.colors.dark,
            actions: [
              IconButton(
                onPressed: () async {
                  showDialog(
                    context: context,
                    builder: (_) => Center(
                      child: PremierLeagueLoading(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  );
                  _screenshotController.capture().then((value) async {
                    final dir = await getApplicationDocumentsDirectory();
                    final image = File('${dir.path}/'
                      'fpl_${DateTime.now().microsecondsSinceEpoch}.png');
                    image.writeAsBytesSync(value ?? Uint8List(0));
                    await ImageGallerySaver.saveImage(
                      value ?? Uint8List(0),
                      quality: 100,
                      name: 'fpl_${DateTime.now().microsecondsSinceEpoch}'
                    );
                    Navigator.pop(context);
                    Share.shareFiles(
                      [image.path],
                      text: 'Here it is my recommended FPL team by caretaker',
                    );
                  });
                },
                icon: Icon(
                  Icons.camera_alt_rounded,
                ),
              ),
            ],
          ),
          body: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: FplTheme.colors.white,
                ),
              ),
              Column(
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
                    child: Column(
                      children: [
                        Text(
                          'Total predicted points',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          '${notifier.totalPredicted?.toStringAsFixed(3)} pts',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: FplTheme.colors.red,
                          ),
                        ),
                      ],
                    )
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (_, constraint) {
                        if (notifier.activeTab == 0) {
                          return Center(
                            child: Screenshot(
                              controller: _screenshotController,
                              child: Container(
                                color: FplTheme.colors.white,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Stack(
                                      children: [
                                        AspectRatio(
                                          aspectRatio: 1,
                                          child: FractionallySizedBox(
                                            widthFactor: 1.0,
                                            child: SvgPicture.asset(
                                              'assets/images/bg_pitch_new.svg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        if (notifier.starting != null) AspectRatio(
                                          aspectRatio: 1,
                                          child: FractionallySizedBox(
                                            widthFactor: 1,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                RowPosition(players: notifier.startGk),
                                                RowPosition(players: notifier.startDef),
                                                RowPosition(players: notifier.startMid),
                                                RowPosition(players: notifier.startFwd),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: notifier.sub?.map((e) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ItemPlayerPitch(
                                              player: e,
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (_) => DialogPlayer(
                                                    codeCaptain: notifier.captain,
                                                    player: e,
                                                    isShowCaptain: false,
                                                    onSetCaptain: () {
                                                      if (e.code != null) {
                                                        context.read<SquadNotifier>().setCaptain(e.code!);
                                                        Navigator.pop(context);
                                                      }
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(height: 4.h),
                                            Text(
                                              notifier.sub?.indexOf(e) == 0
                                                ? 'GK' : notifier.sub?.indexOf(e).toString() ?? '',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        );
                                      }).toList() ?? [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else {
                          return ListView.separated(
                            itemCount: notifier.all?.length ?? 0,
                            itemBuilder: (_, index) => Padding(
                              padding: const EdgeInsets.all(8).r,
                              child: ItemPlayerList(
                                player: notifier.all?[index],
                                onTap: () {
                                  if (notifier.all?[index] != null) {
                                    showDialog(
                                      context: context,
                                      builder: (_) {
                                        PlayerEntity? player = notifier.all?[index];

                                        if (player != null) {
                                          return DialogPlayer(
                                            codeCaptain: notifier.captain,
                                            player: player,
                                            onSetCaptain: () {
                                              if (player.code != null) {
                                                notifier.setCaptain(player.code!);
                                                Navigator.pop(context);
                                              }
                                            },
                                          );
                                        }

                                        return Container();
                                      },
                                    );
                                  }
                                },
                              ),
                            ),
                            separatorBuilder: (_, index) => Container(
                              height: 1.h,
                              color: FplTheme.colors.gray,
                            ),
                          );
                        }
                      },
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
