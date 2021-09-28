import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/components/common_bottom_app_bar.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColorPalette.ScreenBackGround,
      // appBar: PreferredSize(

      // preferredSize: Size.fromHeight(120.0),
      // child: AppBar(
      //   elevation: 0,
      //   backgroundColor: themeColorPalette.AliveGreen/*.ScreenBackGround*/,
      //   leading:Column(
      //     children: [
      //       Padding(padding: EdgeInsets.only(top: 50),),
      //       Expanded(
      //         child: IconButton(
      //                         iconSize: 24,
      //                         icon: SvgPicture.asset(SvgIcons.ArrowBack),
      //                         onPressed: () {},
      //                       ),
      //       ),
      //     ],
      //   ),
      //   // title:
      // ),
      // ),
      body: Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 55),
            ),
            Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: SvgPicture.asset(SvgIcons.ArrowBack),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20), /*53*/
                ),
                Text(
                  'Настройки',
                  style: themeTextStyles.textAppearanceHeadline6,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 45), /*53*/
            ),
            Text(
              'Внешний вид',
              style: themeTextStyles.textAppearanceOverline.copyWith(
                color: themeColorPalette.ServiceBarText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 36,
                    child: SvgPicture.asset(
                      SvgIcons.PaletteSvg,
                      color: themeColorPalette.NameWhite,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Темная тема',
                          style: themeTextStyles.textAppearanceSubtitle1,
                        ),
                        Text(
                          'Включена',
                          style: themeTextStyles.textBody2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 24,
                    child: SvgPicture.asset(
                      SvgIcons.AngleRightIcon,
                    ),
                  ),
                ],
              ),
              onTap: () {
                showDialog(
                  barrierColor: Colors.black.withOpacity(0.47),
                  // barrierDismissible: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SettingsDialog();
                  },
                );
              },
            ),
            Divider(
              height: 72,
              thickness: 1,
              color: themeColorPalette.SearchBarBackGround,
            ),
            Text(
              'О приложении',
              style: themeTextStyles.textAppearanceOverline
                  .copyWith(color: themeColorPalette.ServiceBarText),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            Text(
              'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концентрированной темной материи.',
              style: themeTextStyles.textSettingsDescription,
            ),
            Divider(
              height: 72,
              thickness: 1,
              color: themeColorPalette.SearchBarBackGround,
            ),
            Text(
              'Версия приложения',
              style: themeTextStyles.textAppearanceOverline
                  .copyWith(color: themeColorPalette.ServiceBarText),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            Text(
              'Rick & Morty  v1.0.0',
              style: themeTextStyles.textSettingsDescription,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonBottomAppBar.Settings(),
    );
  }
}

class SettingsDialog extends StatefulWidget {
  @override
  SettingsDialogState createState() => SettingsDialogState();
}

class SettingsDialogState extends State<SettingsDialog> {
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      insetPadding: EdgeInsets.all(16),
      backgroundColor: themeColorPalette.SearchBarBackGround,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Темная тема',
              style: themeTextStyles.textAppearanceHeadline6,
            ),
            Padding(padding: EdgeInsets.only(top: 24)),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    groupValue = 0;
                    // widget. ;
                  },
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Radio(
                      activeColor: themeColorPalette.OverLineFull,
                      value: 0,
                      groupValue: groupValue,
                      onChanged: (val) {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Text(
                      'Выключенна',
                      style: themeTextStyles.textAppearanceSubtitle1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    groupValue = 1;
                  },
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Radio(
                      activeColor: themeColorPalette.OverLineFull,
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (val) {},
                      // _handleRadioValueChange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Text(
                      'Включена',
                      style: themeTextStyles.textAppearanceSubtitle1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    groupValue = 2;
                  },
                );
              },
              // _handleRadioValueChange(),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Radio(
                      activeColor: themeColorPalette.OverLineFull,
                      value: 2,
                      groupValue: groupValue,
                      onChanged: (val) {},
                      // _handleRadioValueChange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Text(
                      'Следовать настройкам системы',
                      style: themeTextStyles.textAppearanceSubtitle1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    groupValue = 3;
                  },
                );
              },
              // _handleRadioValueChange(),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Radio(
                      activeColor: themeColorPalette.OverLineFull,
                      value: 3,
                      groupValue: groupValue,
                      onChanged: (val) {},
                      // _handleRadioValueChange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Text(
                      'В режиме энергосбережения',
                      style: themeTextStyles.textAppearanceSubtitle1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'ОТМЕНА',
                      style: themeTextStyles.textAppearanceButton.copyWith(
                        color: themeColorPalette.NameWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
