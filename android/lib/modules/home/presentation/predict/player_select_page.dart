import 'dart:developer';

import 'package:caretaker_fpl/modules/home/presentation/predict/arguments/player_select_page_arguments.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/dialog_player.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/item_player_search.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/config/themes.dart';
import '../home/notifiers/home_notifier.dart';

class PlayerSelectPage extends StatefulWidget {
  final PlayerSelectPageArguments argument;

  const PlayerSelectPage({Key? key, required this.argument}) : super(key: key);

  @override
  State<PlayerSelectPage> createState() => _PlayerSelectPageState();
}

class _PlayerSelectPageState extends State<PlayerSelectPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<HomeNotifier>().getPlayers(
        position: widget.argument.position
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<PlayerEntity?>? selected = context.select((HomeNotifier n) => n).selectedPlayers;
    List<PlayerEntity>? players = context.select((HomeNotifier n) => n).searches;
    bool isLoading = context.select((HomeNotifier n) => n).isLoadingPlayers;
    bool isKeepLoading = context.select((HomeNotifier n) => n).isKeepLoadingPlayers;

    log(isLoading.toString(),name: 'load');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Player Selection',
          style: Theme.of(context).textTheme.headline2?.copyWith(
            color: FplTheme.colors.white
          ),
        ),
        flexibleSpace: Image.asset(
          'assets/images/bg_heading.png',
          color: Theme.of(context).primaryColor,
          fit: BoxFit.cover,
        ),
        backgroundColor: FplTheme.colors.dark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  context.read<HomeNotifier>().setSearch(
                    value.isEmpty ? null : value
                  ).whenComplete(() {
                    context.read<HomeNotifier>().getPlayers(
                      position: widget.argument.position,
                      page: 1,
                    );
                  });
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0).r,
                  borderSide: BorderSide(
                    color: FplTheme.colors.dark,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0).r,
                  borderSide: BorderSide(
                    color: FplTheme.colors.red,
                  ),
                ),
                contentPadding: const EdgeInsets.all(8).r,
                hintText: 'Search',
              ),
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: 12.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (!isLoading) ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: players?.length ?? 0,
                    itemBuilder: (_, index) {
                      PlayerEntity? player = players?[index];

                      if (!(selected.map((e) => e?.id ?? 0).toList().contains(player?.id))) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 4.h,
                          ),
                          child: ItemPlayerSearch(
                            onTap: () {
                              if (player != null) {
                                showDialog(
                                  context: context,
                                  builder: (_) => DialogPlayer(
                                    player: player,
                                  ),
                                );
                              }
                            },
                            onUpdate: () {
                              if (player != null) {
                                context.read<HomeNotifier>().addSelected(
                                  widget.argument.index,
                                  player,
                                );
                                Navigator.pop(context);
                              }
                            },
                            player: player,
                          ),
                        );
                      }

                      return Container();
                    },
                    separatorBuilder: (_, index) {
                      PlayerEntity? player = players?[index];

                      if (!(selected.map((e) => e?.id ?? 0).toList().contains(player?.id))) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 4.h),
                          height: 1,
                          color: FplTheme.colors.gray,
                        );
                      }

                      return Container();
                    }
                  ),
                  if (isKeepLoading) Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12).r,
                      child: CircularProgressIndicator(
                        color: FplTheme.colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
