import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/dialog_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../common/config/themes.dart';
import '../../../../loading/domain/entities/player_entity.dart';
import '../../home/notifiers/home_notifier.dart';
import 'item_player_search.dart';

class BottomSheetPlayer extends StatefulWidget {
  final String position;
  final List<PlayerEntity>? searches;
  final List<PlayerEntity?> selected;
  final Function(PlayerEntity?) onUpdate;

  const BottomSheetPlayer({Key? key, required this.position, this.searches, required this.selected, required this.onUpdate}) : super(key: key);

  @override
  State<BottomSheetPlayer> createState() => _BottomSheetPlayerState();
}

class _BottomSheetPlayerState extends State<BottomSheetPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.media.padding,
      height: context.finalHeight * .8,
      decoration: BoxDecoration(
        color: FplTheme.colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.screenWidth,
            height: 4.h,
            color: FplTheme.colors.red,
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              'Player Selection',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  context.read<HomeNotifier>().setSearch(
                    value.isEmpty ? null : value
                  );
                  context.read<HomeNotifier>().getPlayers(
                    position: widget.position,
                    page: 1,
                  );
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4).r,
                  borderSide: BorderSide(
                    color: FplTheme.colors.dark,
                  ),
                ),
                contentPadding: const EdgeInsets.all(8).r,
                hintText: 'Search',
              ),
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: 12.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.searches?.length ?? 0,
                    itemBuilder: (_, index) {
                      PlayerEntity? player = widget.searches?[index];

                      if (!(widget.selected.map((e) => e?.id ?? 0).toList().contains(player?.id))) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 4.h,
                          ),
                          child: ItemPlayerSearch(
                            onTap: () {
                              if (player != null) {
                                showDialog(
                                  context: context,
                                  builder: (_) => DialogPlayer(
                                    player: player,
                                  ),
                                );
                              }
                            },
                            onUpdate: () => widget.onUpdate(player),
                            player: player,
                          ),
                        );
                      }

                      return Container();
                    },
                    separatorBuilder: (_, index) {
                      PlayerEntity? player = widget.searches?[index];

                      if (!(widget.selected.map((e) => e?.id ?? 0).toList().contains(player?.id))) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 4.h),
                          height: 1,
                          color: FplTheme.colors.gray,
                        );
                      }

                      return Container();
                    }
                  ),
                  CircularProgressIndicator(
                    color: FplTheme.colors.green,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  int getStartingIndexSelected() {
    switch(widget.position) {
      case 'GK' : return 0;
      case 'DEF' : return 2;
      case 'MID' : return 7;
      default : return 12;
    }
  }
}
