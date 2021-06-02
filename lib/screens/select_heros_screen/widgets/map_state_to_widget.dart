import 'package:flutter/material.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_block.dart';

class mapStateToWidget extends StatelessWidget {
  final Widget? onLoad;
  final Widget? data;
  final Widget? onError;
  final SelectHeroesState state;

  mapStateToWidget({required this.state, this.data, this.onError, this.onLoad});

  @override
  Widget build(BuildContext context) {
    if (state is SelectHeroesStateLoading) {
      return onLoad ?? Container();
    } else if (state is SelectHeroesStateData) {
      return data ?? Container();
    } else if (state is SelectHeroesStateError) {
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
