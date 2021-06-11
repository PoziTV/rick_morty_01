import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_morty_01/screens/location_profile_screen/widgets/location_profile_state_data_to_widget.dart';
import 'package:rick_morty_01/screens/location_profile_screen/bloc/profile_screen_bloc.dart';

class LocationProfileScreen extends StatelessWidget {
  LocationProfileScreen();

  @override
  Widget build(BuildContext context) {
    BuildContext initialContext = context;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTextStyle(
          style: TextStyle(decoration: TextDecoration.none),
          child: BlocConsumer<LocationProfileBloc, LocationProfileState>(
            bloc: LocationProfileBloc(),
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (LocationProfileStateData state) {
                  return LocationProfileStateDataToWidget(
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
