import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/config/themes.dart';

class ItemTeam extends StatelessWidget {
  final TeamEntity? team;
  final bool isSelected;
  final Function() onTap;

  const ItemTeam({Key? key, this.team, required this.onTap, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
              ? Theme.of(context).primaryColor : FplTheme.colors.gray,
            width: isSelected ? 4.0 : 2.0,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FractionallySizedBox(
              widthFactor: 0.5,
              child: AspectRatio(
                aspectRatio: 1,
                child: CachedNetworkImage(
                  imageUrl: team?.logo
                    ?? 'https://brandlogos.net/wp-content/uploads/2021/10/premier-league-logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              team?.teamName ?? '',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
