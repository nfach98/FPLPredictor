import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:flutter/material.dart';

class PremierLeagueLoading extends StatefulWidget {
  const PremierLeagueLoading({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  _PremierLeagueLoadingState createState() => _PremierLeagueLoadingState();
}

class _PremierLeagueLoadingState extends State<PremierLeagueLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation opacityAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(controller);

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Shimmer.fromColors(
    //   baseColor: const Color.fromRGBO(255, 255, 255, 0),
    //   highlightColor: widget.color ?? FplTheme.colors.dark,
    //   child: Image.asset(
    //     'assets/icons/logo_pl_lion.png',
    //     width: context.screenWidth * 0.3,
    //     height: context.screenWidth * 0.3,
    //   ),
    // );

    return AnimatedBuilder(
      animation: opacityAnimation,
      builder: (context, child) => AnimatedOpacity(
        opacity: opacityAnimation.value,
        duration: const Duration(milliseconds: 0),
        child: Image.asset(
          'assets/icons/logo_pl_lion.png',
          color: widget.color ?? FplTheme.colors.dark,
          width: context.screenWidth * 0.3,
          height: context.screenWidth * 0.3,
        ),
      )
    );
  }
}