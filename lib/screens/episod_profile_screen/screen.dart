import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_01/screens/episod_profile_screen/widgets/episod_profile_screen_state_data_to_widget.dart';

import 'bloc/episod_profile_screen_bloc.dart';

class EpisodProfileScreen extends StatelessWidget {
  EpisodProfileScreen();

  @override
  Widget build(BuildContext context) {
    BuildContext initialContext = context;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTextStyle(
          style: TextStyle(decoration: TextDecoration.none),
          child: BlocConsumer<EpisodProfileBloc, EpisodProfileState>(
            bloc: EpisodProfileBloc(),
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (EpisodProfileStateData state) {
                  return EpisodProfileStateDataToWidget(
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
