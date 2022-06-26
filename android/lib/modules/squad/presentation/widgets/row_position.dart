import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
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
        return SizedBox(
          width: context.screenWidth / 5.5,
          height: context.screenWidth / 4.5,
          child: Column(
            children: [
              Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CachedNetworkImage(
                      imageUrl: getShirt(e.shirt, e.position),
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
                    e.webName ?? '',
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
                    e.ptsPredicted.toString() ?? '',
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
        );
      }).toList() ?? [],
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
