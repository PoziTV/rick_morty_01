import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui';

import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_block.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/state_data_to_widget.dart';

class HeroProfileScreen extends StatelessWidget {
  HeroProfileScreen();

  @override
  Widget build(BuildContext context) {
    BuildContext initialContext = context;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTextStyle(
          style: TextStyle(decoration: TextDecoration.none),
          child: BlocConsumer<HeroProfileBloc, HeroProfileState>(
            bloc: HeroProfileBloc(),
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (HeroProfileStateData state) {
                  return StateDataToWidget(
                    state: state,
                    initialContext: initialContext,
                  );
                },
                orElse: () => Text("Error"),
              );
            },
          ),
        ),
      ),
    );
  }
}
