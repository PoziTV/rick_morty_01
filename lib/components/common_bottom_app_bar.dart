import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/bloc/episodes_list_screen_bloc.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/screen.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/bloc/select_heros_screen_bloc.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/screen.dart';
import 'package:rick_morty_01/screens/locations_list_screen/bloc/locations_list_screen_bloc.dart';
import 'package:rick_morty_01/screens/locations_list_screen/screen.dart';
import 'package:rick_morty_01/screens/settings_screen/screen.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

// class CommonBottomAppBar extends StatefulWidget {
//   const CommonBottomAppBar({required Key key}) : super(key: key);
//
//   @override
//   CommonBottomAppBarState createState() => CommonBottomAppBarState();
// }

// class CommonBottomAppBarState extends State<CommonBottomAppBar> {
//   static List<bool> activeItem = [true, false, false, false];
//   // static void Set(){
//   //   setState(() {
//   //   activeItem = List.filled(4, false);
//   //   activeItem[0] = true;
//   // });
//   // };
//   @override
//   void initState() {
//     print('init state: $this');
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     print('dispose: $this');
//     super.dispose();
//   }
//
//   // @override
//   // void didUpdateWidget(TWidget oldWidget) {
//   //   print('didUpdateWidget: $this');
//   //   super.didUpdateWidget(oldWidget);
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     print('ss');
//     return BottomAppBar(
//       color: themeColorPalette.SearchBarBackGround,
//       child: Container(
//         padding: EdgeInsets.only(
//           left: 10,
//           right: 10,
//           top: 8,
//           bottom: 12,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       SvgIcons.Heroes,
//                       color: activeItem[0]
//                           ? themeColorPalette.AliveGreen
//                           : themeColorPalette.HintText,
//                       width: 24,
//                     ),
//                     Text(
//                       'Персонажи',
//                       style: themeTextStyles.textAppearanceCaption.copyWith(
//                         color: activeItem[0]
//                             ? themeColorPalette.AliveGreen
//                             : themeColorPalette.HintText,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ],
//                   mainAxisSize: MainAxisSize.min,
//                 ),
//                 onTap: () {
//                   setState(
//                     () {
//                       activeItem = List.filled(4, false);
//                       activeItem[0] = true;
//
//                       SelectHeroesBloc()
//                         ..add(
//                           SelectHeroesEvent.initial(),
//                         );
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SelectHerosScreen(),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//             Expanded(
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   child: Column(
//                     children: [
//                       SvgPicture.asset(
//                         SvgIcons.Locations,
//                         color: activeItem[1]
//                             ? themeColorPalette.AliveGreen
//                             : themeColorPalette.HintText,
//                         width: 24,
//                       ),
//                       Text(
//                         'Локациии',
//                         style: themeTextStyles.textAppearanceCaption.copyWith(
//                           color: activeItem[1]
//                               ? themeColorPalette.AliveGreen
//                               : themeColorPalette.HintText,
//                         ),
//                       ),
//                     ],
//                     mainAxisSize: MainAxisSize.min,
//                   ),
//                   onTap: () {
//                     setState(
//                       () {
//                         activeItem = List.filled(4, false);
//                         activeItem[1] = true;
//
//                         LocationsListBloc()
//                           ..add(
//                             LocationsListEvent.initial(),
//                           );
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => LocationsListScreen(),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ),
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       SvgIcons.Episodes,
//                       color: activeItem[2]
//                           ? themeColorPalette.AliveGreen
//                           : themeColorPalette.HintText,
//                       width: 24,
//                     ),
//                     Text(
//                       'Эпизоды',
//                       style: themeTextStyles.textAppearanceCaption.copyWith(
//                         color: activeItem[2]
//                             ? themeColorPalette.AliveGreen
//                             : themeColorPalette.HintText,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ],
//                   mainAxisSize: MainAxisSize.min,
//                 ),
//                 onTap: () {
//                   setState(
//                     () {
//                       activeItem = List.filled(4, false);
//                       activeItem[2] = true;
//
//                       EpisodesListBloc()
//                         ..add(
//                           EpisodesListEvent.initial(),
//                         );
//
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => EpisodesListScreen(),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       SvgIcons.Settings,
//                       color: activeItem[3]
//                           ? themeColorPalette.AliveGreen
//                           : themeColorPalette.HintText,
//                       width: 24,
//                     ),
//                     Text(
//                       'Настройки',
//                       style: themeTextStyles.textAppearanceCaption.copyWith(
//                         color: activeItem[3]
//                             ? themeColorPalette.AliveGreen
//                             : themeColorPalette.HintText,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ],
//                   mainAxisSize: MainAxisSize.min,
//                 ),
//                 onTap: () {
//                   setState(
//                     () {
//                       activeItem = List.filled(4, false);
//                       activeItem[3] = true;
//
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SettingsScreen(),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       elevation: 0,
//     );
//   }
// }

class CommonBottomAppBar extends StatelessWidget {
  List<bool> activeItem = [false, false, false, false];

  CommonBottomAppBar.Heroes() {
    this.activeItem[0] = true;
  }

  CommonBottomAppBar.Locations() {
    this.activeItem[1] = true;
  }

  CommonBottomAppBar.Episodes() {
    this.activeItem[2] = true;
  }

  CommonBottomAppBar.Settings() {
    this.activeItem[3] = true;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: themeColorPalette.SearchBarBackGround,
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 8,
          bottom: 12,
        ), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIcons.Heroes,
                      color: activeItem[0]
                          ? themeColorPalette.AliveGreen
                          : themeColorPalette.HintText,
                      width: 24,
                    ),
                    Text(
                      'Персонажи',
                      style: themeTextStyles.textAppearanceCaption.copyWith(
                        color: activeItem[0]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                onTap: () {
                  // setState(() {
                  //   activeItem = List.filled(4, false);
                  //   activeItem[0] = true;
                  // });

                  SelectHeroesBloc()
                    ..add(
                      SelectHeroesEvent.initial(),
                    );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectHerosScreen(),
                      ));
                },
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        SvgIcons.Locations,
                        color: activeItem[1]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        width: 24,
                      ),
                      Text(
                        'Локациии',
                        style: themeTextStyles.textAppearanceCaption.copyWith(
                          color: activeItem[1]
                              ? themeColorPalette.AliveGreen
                              : themeColorPalette.HintText,
                        ),
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                  onTap: () {
                    // setState(
                    //   () {
                    //     activeItem = List.filled(4, false);
                    //     activeItem[1] = true;
                    //   },
                    // );

                    LocationsListBloc()
                      ..add(
                        LocationsListEvent.initial(),
                      );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationsListScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIcons.Episodes,
                      color: activeItem[2]
                          ? themeColorPalette.AliveGreen
                          : themeColorPalette.HintText,
                      width: 24,
                    ),
                    Text(
                      'Эпизоды',
                      style: themeTextStyles.textAppearanceCaption.copyWith(
                        color: activeItem[2]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                onTap: () {
                  // setState(
                  //   () {
                  //     activeItem = List.filled(4, false);
                  //     activeItem[2] = true;
                  //   },
                  // );

                  EpisodesListBloc()
                    ..add(
                      EpisodesListEvent.initial(),
                    );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EpisodesListScreen(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIcons.Settings,
                      color: activeItem[3]
                          ? themeColorPalette.AliveGreen
                          : themeColorPalette.HintText,
                      width: 24,
                    ),
                    Text(
                      'Настройки',
                      style: themeTextStyles.textAppearanceCaption.copyWith(
                        color: activeItem[3]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                onTap: () {
                  // setState(
                  //   () {
                  //     activeItem = List.filled(4, false);
                  //     activeItem[3] = true;
                  //   },
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      elevation: 0,
    );
  }
}
