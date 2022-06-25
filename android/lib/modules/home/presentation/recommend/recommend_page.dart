import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../injection_container.dart';
import 'notifier/recommend_notifier.dart';

class RecommendPage extends StatefulWidget {
  final List<TeamEntity>? teams;

  const RecommendPage({Key? key, this.teams}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  late RecommendNotifier _recommendNotifier;

  @override
  void initState() {
    super.initState();
    _recommendNotifier = sl<RecommendNotifier>();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _recommendNotifier,
      builder: (_, child) => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0).r,
              child: Text(
                'Choose up to 5 favorite team',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16).r,
              child: Text(
                'Recommendation would prioritize players from your favorite teams',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemCount: widget.teams?.length ?? 0,
              itemBuilder: (_, index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: FplTheme.colors.gray,
                    width: 2.0,
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
                          imageUrl: widget.teams?[index].logo
                              ?? 'https://brandlogos.net/wp-content/uploads/2021/10/premier-league-logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      widget.teams?[index].teamName ?? '',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
