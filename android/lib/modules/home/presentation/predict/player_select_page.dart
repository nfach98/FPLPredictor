import 'package:caretaker_fpl/modules/home/presentation/home/notifiers/home_notifier.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/dialog_player.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/widgets/item_player_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/config/themes.dart';
import '../../../loading/domain/entities/player_entity.dart';
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

    return WillPopScope(
      onWillPop: () async{
        // context.read<HomeNotifier>().resetPlayers();
        return true;
      },
      child: Scaffold(
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
          children: [
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
                      color: FplTheme.colors.red,
                    ),
                  ),
                  suffixIcon: IconButton(
                    splashRadius: 2.r,
                    onPressed: () {
                      _searchController.clear();
                      context.read<HomeNotifier>().setSearch(null).whenComplete(() {
                        context.read<HomeNotifier>().getPlayers(
                          position: widget.argument.position,
                          page: 1,
                        );
                      });
                    },
                    icon: Icon(
                      Icons.close_rounded,
                      color: FplTheme.colors.gray,
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
                controller: _scrollController,
                child: Column(
                  children: [
                    if (searches != null) ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: searches.length,
                        itemBuilder: (_, index) {
                          PlayerEntity? player = searches[index];

                          if (!(selected.map((e) => e?.id ?? 0).toList().contains(player.id))) {
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
                                  context.read<HomeNotifier>().addSelected(
                                    widget.argument.index,
                                    player,
                                  );
                                  Navigator.pop(context);
                                },
                                player: player,
                              ),
                            );
                          }

                          return Container();
                        },
                        separatorBuilder: (_, index) {
                          PlayerEntity? player = searches[index];

                          if (!(selected.map((e) => e?.id ?? 0).toList().contains(player.id))) {
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
