import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/common/widget/premier_league_loading.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:caretaker_fpl/modules/home/presentation/home/notifiers/home_notifier.dart';
import 'package:caretaker_fpl/modules/home/presentation/widgets/dialog_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

import '../../../../common/config/themes.dart';
import '../../../loading/domain/entities/player_entity.dart';
import '../widgets/item_player_search.dart';
import 'arguments/player_select_page_arguments.dart';

class PlayerSelectPage extends StatefulWidget {
  final PlayerSelectPageArguments argument;

  const PlayerSelectPage({Key? key, required this.argument}) : super(key: key);

  @override
  State<PlayerSelectPage> createState() => _PlayerSelectPageState();
}

class _PlayerSelectPageState extends State<PlayerSelectPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<HomeNotifier>().getPlayers(
        position: widget.argument.position,
      );
      _searchController.text = context.read<HomeNotifier>().search ?? '';
      _scrollController.addListener(() {
        if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
          context.read<HomeNotifier>().getPlayers(
            position: widget.argument.position,
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<PlayerEntity?>? selected = context.select((HomeNotifier n) => n).selectedPlayers;
    List<PlayerEntity>? searches = context.select((HomeNotifier n) => n.searches);
    bool isLoading = context.select((HomeNotifier n) => n).isLoadingPlayers;
    bool isKeepLoading = context.select((HomeNotifier n) => n).isKeepLoadingPlayers;
    int? team = context.select((HomeNotifier n) => n).searchTeam;
    List<TeamEntity>? teams = context.select((HomeNotifier n) => n).teams;
    List<int>? numTeam = context.select((HomeNotifier n) => n).numberTeam;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Player Selection',
          style: Theme.of(context).textTheme.headline2,
        ),
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: FplTheme.gradients.blueLavenderGradient
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/bg_fpl_new_half.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, FplTheme.colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
        // backgroundColor: FplTheme.colors.dark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: _buildLabelPosition(),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                context.read<HomeNotifier>().setSearch(
                  value.isEmpty ? null : value
                ).whenComplete(() {
                  context.read<HomeNotifier>().getPlayers(
                    position: widget.argument.position,
                    page: 1,
                  );
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
                    color: FplTheme.colors.purple,
                  ),
                ),
                suffixIcon: IconButton(
                  splashRadius: 2.r,
                  onPressed: () {
                    if (_searchController.text.isNotEmpty) {
                      _searchController.clear();
                      context.read<HomeNotifier>().setSearch(null).whenComplete(() {
                        context.read<HomeNotifier>().getPlayers(
                          position: widget.argument.position,
                          page: 1,
                        );
                      });
                    }
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    color: FplTheme.colors.gray,
                  ),
                ),
                contentPadding: const EdgeInsets.all(4).r,
                hintText: 'Search',
              ),
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  border: Border.all(
                    color: FplTheme.colors.dark,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int?>(
                    value: team,
                    onChanged: (value) {
                      setState(() {
                        context.read<HomeNotifier>().setSearchTeam(value).whenComplete(() {
                          context.read<HomeNotifier>().getPlayers(
                            position: widget.argument.position,
                            page: 1,
                          );
                        });
                      });
                    },
                    items: teams?.map((e) => DropdownMenuItem(
                      value: e.id,
                      child: Text(
                        e.teamName ?? '',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    )).toList(),
                    // selectedItemBuilder: (_) => team == null
                    //     ? []
                    //     : teams!.map<Widget>((e) => Text(
                    //   e.teamName ?? '',
                    //   style: Theme.of(context).textTheme.headline3,
                    // )).toList(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  if (!isLoading || searches != null) ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: searches?.length ?? 0,
                    itemBuilder: (_, index) {
                      PlayerEntity? player = searches?[index];
                      int num = numTeam[int.parse(player?.teamId ?? '0') - 1];
                      String? team = teams?.where((e) =>
                        e.id == int.parse(player?.teamId ?? '0')
                      ).toList()[0].teamName;

                      if (!(selected.map((e) => e?.id ?? 0).toList().contains(player?.id))) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 4.h,
                          ),
                          child: ItemPlayerSearch(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (_) => DialogPlayer(
                                  player: player,
                                ),
                              );
                            },
                            onUpdate: () {
                              if (player != null && num < 3) {
                                context.read<HomeNotifier>().addSelected(
                                  widget.argument.index,
                                  player,
                                );
                                Navigator.pop(context);
                              } else {
                                ToastContext().init(context);
                                Toast.show(
                                  'Too much player selected from $team',
                                  duration: Toast.lengthShort,
                                  backgroundColor: FplTheme.colors.red,
                                  textStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: FplTheme.colors.white,
                                  ),
                                  gravity: Toast.bottom,
                                );
                              }
                            },
                            player: player,
                          ),
                        );
                      }

                      return Container();
                    },
                    separatorBuilder: (_, index) {
                      PlayerEntity? player = searches?[index];

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
                  if (isLoading || isKeepLoading) Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12).r,
                      child: PremierLeagueLoading(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildLabelPosition() {
    switch(widget.argument.position) {
      case 'GKP' :
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ).r,
          decoration: BoxDecoration(
            color: FplTheme.colors.dark,
            borderRadius: BorderRadius.vertical(
                bottom: const Radius.circular(8).r
            ),
          ),
          child: Text(
            'Goalkeepers',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: FplTheme.colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      case 'DEF' :
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ).r,
          decoration: BoxDecoration(
            color: FplTheme.colors.dark,
            borderRadius: BorderRadius.vertical(
                bottom: const Radius.circular(8).r
            ),
          ),
          child: Text(
            'Defenders',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: FplTheme.colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      case 'MID' :
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ).r,
          decoration: BoxDecoration(
            color: FplTheme.colors.dark,
            borderRadius: BorderRadius.vertical(
              bottom: const Radius.circular(8).r
            ),
          ),
          child: Text(
            'Midfielders',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: FplTheme.colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      case 'FWD' :
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ).r,
          decoration: BoxDecoration(
            color: FplTheme.colors.dark,
            borderRadius: BorderRadius.vertical(
                bottom: const Radius.circular(8).r
            ),
          ),
          child: Text(
            'Forwards',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: FplTheme.colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
    }
  }
}
