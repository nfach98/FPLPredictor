import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/config/themes.dart';
import '../../../loading/domain/entities/player_entity.dart';
import '../notifiers/squad_notifier.dart';

class ItemPlayerList extends StatelessWidget {
  final PlayerEntity? player;

  const ItemPlayerList({Key? key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: context.screenWidth / 9,
          child: AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              imageUrl: getShirt(player?.shirt, player?.position),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                player?.webName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${player?.team ?? ''} | ${player?.position ?? ''}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        if (Provider.of<SquadNotifier>(context).captain == player?.code)
          SizedBox(
            width: 20.w,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100).r,
                  color: FplTheme.colors.dark,
                ),
                child: Center(
                  child: Text(
                    'C',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: FplTheme.colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        SizedBox(width: 12.w),
        Text(
          '${player?.ptsPredicted.toString()} pts',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }

  String getShirt(String? code, String? pos) {
    if(code == null || pos == null) {
      return 'https://brandlogos.net/wp-content/uploads/2021/10/premier-league-logo.png';
    } else {
      return pos == 'GK'
          ? 'https://fantasy.premierleague.com/dist/img/shirts/standard/${code}_1-66.png'
          : 'https://fantasy.premierleague.com/dist/img/shirts/standard/$code-66.png';
    }
  }
}
