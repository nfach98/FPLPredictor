import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FplTheme {
  static final colors = _Colors();
  static final textStyles = _TextStyles();
  static final dimens = _Dimens();
  
  static final theme = ThemeData(
    fontFamily: 'FF Mark Pro',
    primaryColor: FplTheme.colors.green,
    accentColor: FplTheme.colors.dark,
    textTheme: TextTheme(
      headline1: FplTheme.textStyles.headline1,
      headline2: FplTheme.textStyles.headline2,
      headline3: FplTheme.textStyles.headline3,
      bodyText1: FplTheme.textStyles.bodyText1,
      bodyText2: FplTheme.textStyles.bodyText2,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(FplTheme.colors.dark),
        foregroundColor: MaterialStateProperty.all(FplTheme.colors.white),
        textStyle: MaterialStateProperty.all(
          FplTheme.textStyles.headline3
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.all(16).r),
      ),
    ),
  );
}

class _Colors {
  final red = _Materialize.createMaterialColor(0xffFF2882);
  final green = _Materialize.createMaterialColor(0xff07E07E);
  final dark = const Color(0xff37003C);
  final blue = const Color(0xff04E8F6);
  final yellow = const Color(0xffE3F70A);
  final purple = const Color(0xff963CFF);
  final gray = const Color(0xffEAEAE5);
  final white = const Color(0xffF9F9F9);
}

class _TextStyles {
  final headline1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    color: FplTheme.colors.dark,
  );
  final headline2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: FplTheme.colors.dark,
  );
  final headline3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: FplTheme.colors.dark,
  );
  final bodyText1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: FplTheme.colors.dark,
  );
  final bodyText2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
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

class _Materialize {
  static MaterialColor createMaterialColor(int value) {
    Color color = Color(value);
    
    return MaterialColor(
        value,
      {
        50:Color.fromRGBO(color.red,color.green,color.blue, .1),
        100:Color.fromRGBO(color.red,color.green,color.blue, .2),
        200:Color.fromRGBO(color.red,color.green,color.blue, .3),
        300:Color.fromRGBO(color.red,color.green,color.blue, .4),
        400:Color.fromRGBO(color.red,color.green,color.blue, .5),
        500:Color.fromRGBO(color.red,color.green,color.blue, .6),
        600:Color.fromRGBO(color.red,color.green,color.blue, .7),
        700:Color.fromRGBO(color.red,color.green,color.blue, .8),
        800:Color.fromRGBO(color.red,color.green,color.blue, .9),
        900:Color.fromRGBO(color.red,color.green,color.blue, 1),
      }
    );
  }
}





