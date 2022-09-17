import 'dart:ui';

import 'package:flutter/material.dart';

import '../res/my_colors.dart';

class Styles {

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.blue,
      primaryColor: isDarkTheme ? MyColors.primaryDark : MyColors.primary,

      backgroundColor: isDarkTheme ? MyColors.backgroundDark : MyColors.background,

      indicatorColor: isDarkTheme ? MyColors.primaryDark : MyColors.primary,
      buttonColor: isDarkTheme ? MyColors.primaryDark : MyColors.primary,

      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),

      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),

      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: isDarkTheme ? MyColors.backgroundDark : MyColors.background
      ),
      cardTheme: CardTheme(
        color: isDarkTheme ? Color(0xff121212) : Colors.white
      ),
      textTheme: Theme.of(context).textTheme.apply(
        bodyColor: isDarkTheme ? MyColors.white : MyColors.grey_80,
        displayColor: isDarkTheme ? MyColors.white : MyColors.grey_80,
      ),
      scaffoldBackgroundColor: isDarkTheme ? MyColors.backgroundDark : MyColors.background
    );

  }
}