import 'dart:async';

import 'package:bugetin/ui/dashboard/dashboard_screen.dart';
import 'package:bugetin/ui/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../preferences/pref_data.dart';
import '../../utils/screen_utils.dart';
import '../../widget/progress_loading.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    Future<void> _getPrefData() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool isLoggedIn = prefs.containsKey(PrefData.accessToken);
      bool firstOpenApp = prefs.getBool(PrefData.firstOpenApp) ?? true;
      if (firstOpenApp) {
        ScreenUtils(context).navigateTo(const OnboardingScreen(), replaceScreen: true);
      } else {
        ScreenUtils(context).navigateTo(DashboardScreen(), replaceScreen: true);
      }
    }

    Timer(Duration(seconds: 2), () {
      _getPrefData();
    });

    final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: _size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/ic_logo.svg", width: 100,),
          SizedBox(
            height: 50,
          ),
          ProgressLoading(
            size: 14,
            stroke: 1,
          )
        ],
      ),
    ));
  }
}
