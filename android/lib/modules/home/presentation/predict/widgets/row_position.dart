import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/loading/presentation/notifiers/loading_notifier.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/item_player_pitch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../loading/domain/entities/player_entity.dart';
import '../../../../squad/presentation/widgets/dialog_player.dart';

class RowPosition extends StatelessWidget {
  final List<PlayerEntity?>? players;

  const RowPosition({Key? key, this.players}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: players?.map((e) => e == null
        ? Opacity(
          opacity: 0.7,
            child: ItemPlayerPitch(
            player: e,
            onTap: () { },
          ),
        )
        : ItemPlayerPitch(
          player: e,
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => DialogPlayer(
                codeCaptain: 0,
                player: e,
              ),
            );
          },
        ),
      ).toList() ?? [],
    );
  }
}
