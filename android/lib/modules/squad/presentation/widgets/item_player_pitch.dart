import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:caretaker_fpl/modules/squad/presentation/notifiers/squad_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/config/themes.dart';

class ItemPlayerPitch extends StatelessWidget {
  final PlayerEntity? player;
  final Function() onTap;
  
  const ItemPlayerPitch({Key? key, this.player, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: context.screenWidth / 5.5,
        height: context.screenWidth / 4.5,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CachedNetworkImage(
                      imageUrl: getShirt(player?.shirt, player?.position),
                      fit: BoxFit.contain,
                    ),
                  )
                ),
                SizedBox(height: 4.h),
                FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Container(
                    color: FplTheme.colors.dark,
                    alignment: Alignment.center,
                    child: Text(
                      player?.webName ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: FplTheme.colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: FplTheme.colors.green,
                      borderRadius: BorderRadius.vertical(
                        bottom: const Radius.circular(4).r,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${player?.ptsPredicted.toString()} pts',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: FplTheme.colors.dark,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                )
              ],
            ),
            if (Provider.of<SquadNotifier>(context).captain == player?.code) Positioned(
              right: 0,
              child: SizedBox(
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
            )
          ],
        ),
      ),
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
