import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/config/themes.dart';

class SquadTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function() onTap;

  const SquadTab({
    Key? key,
    required this.text,
    this.isSelected = false,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return InkWell(
        onTap: onTap,
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(4).r,
          child: Container(
            decoration: BoxDecoration(
              color: FplTheme.colors.white,
              borderRadius: BorderRadius.circular(4).r,
            ),
            padding: const EdgeInsets.all(12).r,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3?.copyWith(
                fontSize: 12.sp,
                color: FplTheme.colors.dark,
              ),
            ),
          ),
        ),
      );
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: FplTheme.colors.gray,
          borderRadius: BorderRadius.circular(4).r,
        ),
        padding: const EdgeInsets.all(12).r,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3?.copyWith(
            fontSize: 12.sp,
            color: FplTheme.colors.dark,
          ),
        ),
      ),
    );
  }
}
