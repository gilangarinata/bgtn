import 'package:bugetin/preferences/theme_preferences.dart';
import 'package:bugetin/ui/splashscreen/splash_screen_page.dart';
import 'package:bugetin/utils/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var isDarkTheme = false;

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    DarkThemePreference darkThemePreference = DarkThemePreference();
    isDarkTheme = await darkThemePreference.getTheme();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Styles.themeData(false, context),
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage()
    );
  }
}