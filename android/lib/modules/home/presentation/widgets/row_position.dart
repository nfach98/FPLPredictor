import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/arguments/player_select_page_arguments.dart';
import 'package:caretaker_fpl/modules/home/presentation/widgets/dialog_player.dart';
import 'package:caretaker_fpl/modules/home/presentation/widgets/item_player_pitch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../common/constants/route_constants.dart';
import '../../../loading/domain/entities/player_entity.dart';

class RowPosition extends StatelessWidget {
  final List<PlayerEntity?>? players;
  final String position;

  const RowPosition({Key? key, this.players, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenWidth / 4.5,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: players?.length,
        itemBuilder: (_, index) {
          PlayerEntity? e = players?[index];

          if (e != null) {
            return Container(
              width: context.screenWidth / (players?.length ?? 1),
              alignment: Alignment.center,
              child: ItemPlayerPitch(
                player: e,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => DialogPlayer(
                      index: getStartingIndexSelected() + index,
                      player: e,
                    ),
                  );
                },
              ),
            );
          }

          return Container(
            width: context.screenWidth / (players?.length ?? 1),
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.7,
              child: ItemPlayerPitch(
                player: e,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.playerSelect,
                    arguments: PlayerSelectPageArguments(
                        index: getStartingIndexSelected() + index,
                        position: position
                    ),
                  );
                },
              ),
            ),
          );
        }
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: players?.map((e) => e == null
        ? Opacity(
          opacity: 0.7,
          child: ItemPlayerPitch(
            player: e,
            onTap: () {
              print(players?.indexOf(e));
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
