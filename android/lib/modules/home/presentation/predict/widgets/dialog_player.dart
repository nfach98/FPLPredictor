import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogPlayer extends StatelessWidget {
  final PlayerEntity? player;

  const DialogPlayer({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: FplTheme.colors.white,
            margin: const EdgeInsets.all(20).r,
            padding: const EdgeInsets.all(12).r,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (player != null) Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/logo_pl_long.png',
                          height: context.screenWidth * 0.1,
                          fit: BoxFit.contain,
                        ),
                        const Spacer(),
                        SizedBox(
                          width: context.screenWidth * 0.1,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                color: Colors.red,
                                child: Icon(
                                  Icons.close,
                                  color: FplTheme.colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    AspectRatio(
                      aspectRatio: 16/8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4).r,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                color: FplTheme.colors.dark,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: Image.asset(
                                'assets/images/bg_heading.png',
                                color: Theme.of(context).primaryColor,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0).r,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          player?.name ?? '',
                                          overflow: TextOverflow.clip,
                                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                              color: FplTheme.colors.white,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 4.h,
                                            bottom: 2.h,
                                          ),
                                          child: getPosition(
                                            context,
                                            player?.position ?? '',
                                          ),
                                        ),
                                        Text(
                                          player?.team ?? '',
                                          overflow: TextOverflow.clip,
                                          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                            color: FplTheme.colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  AspectRatio(
                                    aspectRatio: 11/14,
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://resources.premierleague.com/premierleague/photos/players/110x140/p${player?.code}.png',
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Price',
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '£${player?.cost}',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Actual',
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '${player?.ptsActual} pts',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Predicted',
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '${player?.ptsPredicted} pts',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: TextButton(
                      onPressed: () {

                      },
                      child: const Text('Remove Player'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getPosition(BuildContext context, String position) {
    switch(position) {
      case 'GK':
        return Container(
          color: FplTheme.colors.yellow,
          child: Text(
            'Goalkeeper',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600
            ),
          ),
        );
      case 'DEF':
        return Container(
          color: FplTheme.colors.green,
          child: Text(
            'Defender',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600
            ),
          ),
        );
      case 'MID':
        return Container(
          color: FplTheme.colors.blue,
          child: Text(
            'Midfielder',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600
            ),
          ),
        );
      case 'FWD':
        return Container(
          color: FplTheme.colors.red,
          child: Text(
            'Forward',
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: FplTheme.colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      default:
        return Container();
    }
  }
}
