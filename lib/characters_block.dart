import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:rick_morty_01/screens/select_heros_screen/widgets/search_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/serviсe_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/list_view.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/grid_view.dart';

import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';
import 'package:rick_morty_01/data/hero_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_state.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_event.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_block.dart';
// import 'package:freezed/builder.dart';

// part 'characters_bloc.freezed.dart';

// class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
//   CharactersBloc() : super(CharactersState_initial());
//   bool isGrid = false;
//
//   /// Отслеживает события. Метод map позволяет нам сократить код и не дает потерять состояние.
//   @override
//   Stream<CharactersState> mapEventToState(CharactersEvent event) async* {
//     if (event is CharactersEvent_initial) yield* _mapInitialCharactersEvent();
//     if (event is CharactersEvent_selectedView)
//       yield* _mapSelectedViewCharactersEvent(event);
//   }
//
//   Stream<CharactersState> _mapInitialCharactersEvent() async* {
//     /// Возвращаем состояние загрузки
//     yield CharactersState_loading();
//
//     try {
//       /// Получение данных
//
//     } catch (ex) {
//       /// Возвращаем состояние с ошибкой
//       yield CharactersState_error();
//     }
//
//     /// Возвращаем состояние с данными
//     yield CharactersState_data(
//       heroesList: HeroesList,
//       isGrid: isGrid,
//     );
//   }
//
//   Stream<CharactersState> _mapSelectedViewCharactersEvent(
//       CharactersEvent_selectedView event
//       /*_SelectedViewCharactersEvent event*/) async* {
//     yield CharactersState_loading();
//     isGrid = !event.isGrid;
//     yield CharactersState_data(
//       heroesList: HeroesList,
//       isGrid: isGrid,
//     );
//   }
// }

/// Абстрактный класс состояния
// abstract class CharactersState extends Equatable {
//   CharactersState();
//   @override
//   List<Object> get props => [];
// }
//
// /// Состояние с данными
// class CharactersState_data extends CharactersState {
//   final List<HeroModel> heroesList;
//   final bool isGrid;
//
//   CharactersState_data({required this.heroesList, required this.isGrid});
// }
//
// /// Состояние инициализации
// class CharactersState_initial extends CharactersState {
//   CharactersState_initial();
//   @override
//   List<Object> get props => [];
// }
//
// class CharactersState_error extends CharactersState {
//   CharactersState_error();
//   @override
//   List<Object> get props => [];
// }
//
// /// Состояние отображения этапа загрузки
// class CharactersState_loading extends CharactersState {
//   CharactersState_loading();
// }

// /// Абстрактный класс событий
// abstract class CharactersEvent {}
//
// /// Событие инициализации
// class CharactersEvent_initial extends CharactersEvent {}
//
// ///Событие выбора темы
// class CharactersEvent_selectedView extends CharactersEvent {
//   bool isGrid;
//   CharactersEvent_selectedView({required this.isGrid});
// }

/// Экран
class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Делаем доступным блок в дереве виджетов
    return BlocProvider<HeroesBloc>(
      create: (BuildContext context) =>
          HeroesBloc()..add(HeroesEvent_initial()),

      /// Обрабатываем состояние
      child: BlocConsumer<HeroesBloc, HeroesState>(
        /// Возвращает виджеты поверх основного состояния. Используется для отображения ошибок, навигации и др.
        listener: (context, state) {},

        /// Обрабатывает состояния
        builder: (context, state) {
          return
              Text("");
              //   state.maybeMap   (
              //   loading: (_) => CircularProgressIndicator(),
              //   data: (_data) => Scaffold(
              //     appBar: AppBar(
              //       elevation: 0,
              //       automaticallyImplyLeading: false,
              //       title: SearchBar(), //search_bar
              //
              //       bottom:
          //     ServiceBar(
          //   heroesTotal: HeroesList.length,
          //   changeViewCallBack: (value) {
          //     context.read<CharactersBloc>()
          //       ..add(
          //         CharactersEvent_selectedView(isGrid: value),
          //       );
          //   },
          // );
          //       // PreferredSize(
          //       //   preferredSize: Size.fromHeight(60),
          //       //   child: TotalCharacters(
          //       //     totalCharacters: _data.characterList.length.toString(),
          //       //     onSelected: (value) {
          //       //       context.read<CharactersBloc>()
          //       //         ..add(
          //       //           CharactersEvent.selectedView(isGrid: value),
          //       //         );
          //       //     },
          //       //   ),
          //       // ),
          //     ),
          //     body: _data.isGrid
          //         ?  HeroesListView(heroesList: heroesList)
          //     // CharactersGrid(characterList: _data.characterList)
          //         : HeroesGridView(heroesList: heroesList),
          //     // CharactersList(characterList: _data.characterList),
          //   ),
          //   orElse: () => SizedBox.shrink(),
          // );
        },
      ),
    );
  }
}
