import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/widgets/grid_view.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/widgets/list_view.dart';

class SelectableHeroesList extends StatelessWidget {
  final bool isGrid;
  final List<HeroModel> heroesList;

  SelectableHeroesList({required this.isGrid, required this.heroesList});

  @override
  Widget build(BuildContext context) {
    return
      // SingleChildScrollView(
      // child:
      isGrid
          ? HeroesListView(/*heroesList: heroesList*/)
          : HeroesGridView(heroesList: heroesList);
    // );
  }
}
