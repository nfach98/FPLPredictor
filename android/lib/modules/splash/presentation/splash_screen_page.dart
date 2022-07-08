import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/route_constants.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with TickerProviderStateMixin {
  late Animation _logoSlideInAnimation,
      _logoScale1Animation,
      _logoScale2Animation;
  late AnimationController _logoSlideInController,
      _logoScale1Controller,
      _logoScale2Controller;

  @override
  void initState() {
    super.initState();
    _logoSlideInController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _logoScale1Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _logoScale2Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _logoSlideInAnimation =
        Tween(begin: -720.w, end: 0.w).animate(_logoSlideInController);
    _logoScale1Animation =
        Tween(begin: 1.r, end: 0.4.r).animate(_logoScale1Controller);
    _logoScale2Animation =
        Tween(begin: 1.r, end: 40.r).animate(_logoScale2Controller);

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 500)).then((value) {
        _logoSlideInController.forward().whenComplete(() {
          Future.delayed(const Duration(milliseconds: 500)).then((value) {
            _logoScale1Controller.forward().whenComplete(() {
              Future.delayed(const Duration(milliseconds: 300)).then((value) {
                _logoScale2Controller.forward().whenComplete(() {
                  Navigator.pushReplacementNamed(context, RouteConstants.home);
                });
              });
            });
          });
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: FplTheme.gradients.blueLavenderGradient
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            'assets/images/bg_fpl_new.png',
            fit: BoxFit.cover,
          ),
        ),
        AnimatedBuilder(
          animation: _logoSlideInAnimation,
          builder: (_, child) => Transform.translate(
            offset: Offset(_logoSlideInAnimation.value, 0),
            child: AnimatedBuilder(
              animation: _logoScale2Animation,
              builder: (_, child) => Transform.scale(
                scale: _logoScale2Animation.value,
                child: Stack(
                  children: [
                    AnimatedBuilder(
                      animation: _logoScale1Animation,
                      builder: (_, child) => Center(
                        child: Transform.scale(
                          scaleX: _logoScale1Animation.value,
                          scaleY: _logoScale1Animation.value,
                          child: Stack(
                            children: [
                              Center(
                                child: _logoScale1Controller.isAnimating ||
                                        _logoScale1Controller.isCompleted
                                    ? Material(
                                        elevation: 4.r,
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: SizedBox(
                                            height: context.screenHeight,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: FplTheme.gradients.greenBlueGradient
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(
                                        height: context.screenHeight,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: FplTheme.gradients.greenBlueGradient
                                          ),
                                        ),
                                      ),
                              ),
                              if (!_logoScale1Controller.isCompleted)
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(12.r),
                                    child: Image.asset(
                                      'assets/icons/logo_pl_long_no_lion.png',
                                      height: context.media.size.height * .15,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Image.asset(
                          'assets/icons/logo_pl_lion.png',
                          width: context.media.size.height * .15,
                          height: context.media.size.height * .15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
