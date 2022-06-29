import 'package:caretaker_fpl/modules/home/presentation/predict/arguments/player_select_page_arguments.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/dialog_player.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/item_player_pitch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../common/constants/route_constants.dart';
import '../../../../loading/domain/entities/player_entity.dart';
import '../../home/notifiers/home_notifier.dart';

class RowPosition extends StatelessWidget {
  final List<PlayerEntity?>? players;
  final String position;

  const RowPosition({Key? key, this.players, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: players?.map((e) => e == null
      ? Opacity(
        opacity: 0.7,
        child: ItemPlayerPitch(
          player: e,
          onTap: () {
            // context.read<HomeNotifier>().getPlayers(
            //   position: position,
            //   page: 1,
            // ).then((value) {
            //   Navigator.pop(context);
            //   if (value != null) {
            //
            // showModalBottomSheet(
            //   isScrollControlled: true,
            //   context: context,
            //   builder: (_) => BottomSheetPlayer(
            //     selected: selected,
            //     position: position,
            //     searches: value,
            //     onUpdate: (player) {
            //       if (player != null) {
            //         context.read<HomeNotifier>().addSelected(
            //             getStartingIndexSelected() + (players?.indexOf(e) ?? 0),
            //             player
            //         );
            //         Navigator.pop(context);
            //       }
            //     },
            //   ),
            // );
            //   }
            // });
            Navigator.pushNamed(
              context,
              RouteConstants.playerSelect,
              arguments: PlayerSelectPageArguments(
                index: getStartingIndexSelected() + (players?.indexOf(e) ?? 0),
                position: position
              ),
            );
          },
        ),
      )
      : ItemPlayerPitch(
        player: e,
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => DialogPlayer(
              index: getStartingIndexSelected() + (players?.indexOf(e) ?? 0),
              player: e,
            ),
          );
        },
      ),
      ).toList() ?? [],
    );
  }

  int getStartingIndexSelected() {
    switch(position) {
      case 'GK' : return 0;
      case 'DEF' : return 2;
      case 'MID' : return 7;
      default : return 12;
    }
  }
}
