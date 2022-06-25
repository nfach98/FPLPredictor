import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FplTheme {
  static final colors = _Colors();
  static final textStyles = _TextStyles();
  static final dimens = _Dimens();
  
  static final theme = ThemeData(
    fontFamily: 'Radikal',
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: FplTheme.colors.red,
    ).copyWith(secondary: FplTheme.colors.dark),
  );
}

class _Colors {
  final red = const MaterialColor(
    0xffFF2882,
    {
      50:Color.fromRGBO(255,40,130, .1),
      100:Color.fromRGBO(255,40,130, .2),
      200:Color.fromRGBO(255,40,130, .3),
      300:Color.fromRGBO(255,40,130, .4),
      400:Color.fromRGBO(255,40,130, .5),
      500:Color.fromRGBO(255,40,130, .6),
      600:Color.fromRGBO(255,40,130, .7),
      700:Color.fromRGBO(255,40,130, .8),
      800:Color.fromRGBO(255,40,130, .9),
      900:Color.fromRGBO(255,40,130, 1),
    }
  );
  
  final dark = const Color(0xff37003C);
  final green = const Color(0xff07E07E);
  final blue = const Color(0xff04E8F6);
  final yellow = const Color(0xffE3F70A);
  final purple = const Color(0xff963CFF);
  final gray = const Color(0xffEAEAE5);
  final white = const Color(0xffF9F9F9);
}

class _TextStyles {
  final f32WhiteW700Quicksand =
      TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w700, fontSize: 32.sp, color: Colors.white);
  final f18BlackW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: FplTheme.colors.dark,
  );

  final f15BlackNormalInter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15.sp,
    color: FplTheme.colors.dark,
  );

  final f15BlackW400Inter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: FplTheme.colors.dark,
  );
  final f15TextColorSecondaryW400Inter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: FplTheme.colors.dark,
  );

  final f15BlackW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: FplTheme.colors.dark,
  );

  final f16BlackW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: FplTheme.colors.dark,
  );
  final f15DisabledNormalInter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15.sp,
    color: FplTheme.colors.dark,
  );
  final f13BlackW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
  final f13BaseColorW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
  final f13TextColorSecondaryNormalInter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
  final f13TextColorSecondaryW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: FplTheme.colors.dark,
  );
  final f13BaseColorW700Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
  final f12BaseColorW600Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: FplTheme.colors.dark,
  );
  final f13BlackW400Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
  final f13TextColorSecondaryW400Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
  final f11TextColorSecondaryNormalInter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 11.sp,
    color: FplTheme.colors.dark,
  );
  final f11BaseColorNormalInter = TextStyle(
    fontFamily: 'Inter',
    fontSize: 11.sp,
    color: FplTheme.colors.dark,
  );
  final f11WhiteW600Inter = TextStyle(fontFamily: 'Inter', fontSize: 11.sp, color: Colors.white);
  final f13BlackColorW400Inter = TextStyle(


    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );

  final f13BlackTextColorSecondaryW400Inter = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: FplTheme.colors.dark,
  );
}

class _Dimens{
  final double searchWidgetHeight = 48.h;
  final double paddingNormal = 16.h;
  final double horizontalPaddingNormal = 16.w;
  final double horizontalPaddingLarge = 24.w;
  final double fixedHeightAppbar = 56.h;
}





