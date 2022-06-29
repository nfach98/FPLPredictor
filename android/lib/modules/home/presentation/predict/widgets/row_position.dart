import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/dialog_player.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/item_player_pitch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../loading/domain/entities/player_entity.dart';
import '../../home/notifiers/home_notifier.dart';
import '../notifiers/predict_notifier.dart';
import 'bottom_sheet_player.dart';

class RowPosition extends StatefulWidget {
  final List<PlayerEntity?>? players;
  final String position;

  const RowPosition({Key? key, this.players, required this.position}) : super(key: key);

  @override
  State<RowPosition> createState() => _RowPositionState();
}

class _RowPositionState extends State<RowPosition> {
  @override
  Widget build(BuildContext context) {
    List<PlayerEntity>? searches = context.select((HomeNotifier n) => n.searches);
    List<PlayerEntity?> selected = context.select((HomeNotifier n) => n.selectedPlayers);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: widget.players?.map((e) => e == null
      ? Opacity(
        opacity: 0.7,
        child: ItemPlayerPitch(
          player: e,
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            );
            context.read<HomeNotifier>().getPlayers(
              position: widget.position,
              page: 1,
            ).then((value) {
              Navigator.pop(context);
              if (value != null) {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (_) => BottomSheetPlayer(
                    selected: selected,
                    position: widget.position,
                    searches: value,
                    onUpdate: (player) {
                      if (player != null) {
                        context.read<HomeNotifier>().addSelected(
                            getStartingIndexSelected() + (widget.players?.indexOf(e) ?? 0),
                            player
                        );
                        Navigator.pop(context);
                      }
                    },
                  ),
                );
              }
            });
          },
        ),
      )
      : ItemPlayerPitch(
        player: e,
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => DialogPlayer(
              player: e,
            ),
          );
        },
      ),
      ).toList() ?? [],
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
