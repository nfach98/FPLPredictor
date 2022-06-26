import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/item_player_pitch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/config/themes.dart';
import '../../../loading/domain/entities/player_entity.dart';

class RowPosition extends StatelessWidget {
  final List<PlayerEntity>? players;

  const RowPosition({Key? key, this.players}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: players?.map((e) {
        return ItemPlayerPitch(player: e);
      }).toList() ?? [],
    );
  }
}
