import 'package:cached_network_image/cached_network_image.dart';
import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/utils/extensions.dart';
import 'package:caretaker_fpl/modules/squad/presentation/widgets/row_position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../injection_container.dart';
import 'arguments/loading_page_arguments.dart';
import 'notifiers/squad_notifier.dart';

class SquadPage extends StatefulWidget {
  final SquadPageArguments argument;

  const SquadPage({Key? key, required this.argument}) : super(key: key);

  @override
  State<SquadPage> createState() => _SquadPageState();
}

class _SquadPageState extends State<SquadPage> {
  late SquadNotifier _squadNotifier;

  @override
  void initState() {
    super.initState();
    _squadNotifier = sl<SquadNotifier>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.argument.starting != null) {
        _squadNotifier.setStarting(widget.argument.starting!);
      }
      if (widget.argument.sub != null) {
        _squadNotifier.setSub(widget.argument.sub!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _squadNotifier,
      builder: (_, child) => Consumer<SquadNotifier>(
        builder: (_, notifier, child) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Squad',
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
          body: Stack(
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
              Column(
                children: [
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: FractionallySizedBox(
                          widthFactor: 1.0,
                          child: SvgPicture.asset(
                            'assets/images/bg_pitch.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      if (notifier.starting != null) AspectRatio(
                        aspectRatio: 1,
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowPosition(players: notifier.startGk),
                              RowPosition(players: notifier.startDef),
                              RowPosition(players: notifier.startMid),
                              RowPosition(players: notifier.startFwd),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
