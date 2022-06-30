import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/constants/route_constants.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/common/widget/premier_league_loading.dart';
import 'package:caretaker_fpl/modules/loading/presentation/notifiers/loading_notifier.dart';
import 'package:caretaker_fpl/modules/squad/presentation/arguments/loading_page_arguments.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../injection_container.dart';
import 'arguments/loading_page_arguments.dart';

class LoadingPage extends StatefulWidget {
  final LoadingPageArguments argument;

  const LoadingPage({Key? key, required this.argument}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  late LoadingNotifier _loadingNotifier;

  @override
  void initState() {
    super.initState();
    _loadingNotifier = sl<LoadingNotifier>();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if (widget.argument.trivias != null) {
        _loadingNotifier.setTrivias(widget.argument.trivias!);
      }

      if (widget.argument.type == 'recommend') {
        _loadingNotifier.getRecommendation(teams: widget.argument.teams).whenComplete(() {
          if (_loadingNotifier.starting != null && _loadingNotifier.sub != null) {
            Navigator.pushReplacementNamed(
              context,
              RouteConstants.squad,
              arguments: SquadPageArguments(
                starting: _loadingNotifier.starting,
                sub: _loadingNotifier.sub,
              ),
            );
          }
        });
      } else if (widget.argument.type == 'predict' && widget.argument.players != null) {
        _loadingNotifier.getPrediction(players: widget.argument.players!).whenComplete(() {
          if (_loadingNotifier.starting != null && _loadingNotifier.sub != null) {
            Navigator.pushReplacementNamed(
              context,
              RouteConstants.squad,
              arguments: SquadPageArguments(
                starting: _loadingNotifier.starting,
                sub: _loadingNotifier.sub,
              ),
            );
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _loadingNotifier,
      builder: (_, child) => Consumer<LoadingNotifier>(
        builder: (_, notifier, child) => Column(
          children: [
            Container(
              width: context.screenWidth,
              height: context.statusBarHeight,
              color: FplTheme.colors.green,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/bg_fpl.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(36).r,
                        child: Material(
                          elevation: 4.r,
                          color: Colors.transparent,
                          child: Container(
                            width: context.screenWidth,
                            height: context.finalHeight,
                            color: FplTheme.colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (notifier.trivias != null) Padding(
                    padding: const EdgeInsets.all(36).r,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: context.finalHeight,
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(seconds: 2),
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        scrollPhysics: const NeverScrollableScrollPhysics(),
                      ),
                      items: notifier.trivias?.map((e) => Padding(
                        padding: const EdgeInsets.all(12).r,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: FractionallySizedBox(
                                  widthFactor: 0.8,
                                  child: CachedNetworkImage(
                                    imageUrl: e.image
                                      ?? 'https://brandlogos.net/wp-content/uploads/2021/10/premier-league-logo.png',
                                    color: e.image == null
                                      ? FplTheme.colors.dark : null,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                e.content ?? '',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: 32.h),
                              PremierLeagueLoading(
                                color: FplTheme.colors.white,
                              ),
                              // CircularProgressIndicator(color: FplTheme.colors.white)
                            ],
                          ),
                        ),
                      )).toList(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
