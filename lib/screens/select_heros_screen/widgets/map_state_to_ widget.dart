import 'package:flutter/material.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_state.dart';

class mapStateToWidget extends StatelessWidget {
  final Widget? onLoad;
  final Widget? data;
  final Widget? onError;
  final HeroesState state;

  mapStateToWidget({required this.state, this.data, this.onError, this.onLoad});

  @override
  Widget build(BuildContext context) {
    if (state is HeroesState_loading) {
      return onLoad ?? Container();
    } else if (state is HeroesState_data) {
      return data ?? Container();
    } else if (state is HeroessState_error) {
      return onError ??
          Container(
            color: Colors.deepOrangeAccent,
          );
    } else {
      return Container(
        color: Colors.amber,
      );
    }
  }
}
