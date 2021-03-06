import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../loading/domain/entities/player_entity.dart';

class ItemPlayerList extends StatelessWidget {
  final PlayerEntity? player;
  final Function() onTap;

  const ItemPlayerList({Key? key, this.player, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
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
          SizedBox(width: 12.w),
          Text(
            '${player?.ptsPredicted.toString()} pts',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  String getShirt(String? code, String? pos) {
    if(code == null || pos == null) {
      return 'https://brandlogos.net/wp-content/uploads/2021/10/premier-league-logo.png';
    } else {
      return pos == 'GKP'
          ? 'https://fantasy.premierleague.com/dist/img/shirts/standard/${code}_1-66.png'
          : 'https://fantasy.premierleague.com/dist/img/shirts/standard/$code-66.png';
    }
  }
}
