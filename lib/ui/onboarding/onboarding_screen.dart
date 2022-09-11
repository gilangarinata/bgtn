import 'package:bugetin/preferences/pref_data.dart';
import 'package:bugetin/ui/dashboard/dashboard_screen.dart';
import 'package:bugetin/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

import '../../res/my_colors.dart';
import '../../widget/progress_loading.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  late LiquidController _liquidController;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    _liquidController = LiquidController();
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          Container(
            width: double.infinity,
            color: MyColors.primaryVariants,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/img_onboarding_1.svg", height: 300,),
                        SizedBox(height: 50,),
                        Text("Track Your\nIncome & Expense",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Pilih provider yang sesuai dengan pulsa yang akan kamu convert", style: TextStyle( fontSize: 16, color: Colors.white), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.black12,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.black12,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                )
                            ),
                        ),
                      onPressed: () {
                        _liquidController.animateToPage(page: 1);
                      },
                      child:  Text(
                        "Next",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.apply(color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: MyColors.primary,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/img_onboarding_2.svg", height: 300,),
                        SizedBox(height: 50,),
                        Text("Quick Entry using\nVoice Command",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Pilih provider yang sesuai dengan pulsa yang akan kamu convert", style: TextStyle( fontSize: 16, color: Colors.white), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.black12,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                        ),
                      ),
                      onPressed: () async{
                        _liquidController.animateToPage(page: 2);
                      },
                      child:  Text(
                        "Next",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.apply(color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: MyColors.secondary,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/img_onboarding_3.png", height: 300,),
                        SizedBox(height: 50,),
                        Text("Set Up your Budget",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Pilih provider yang sesuai dengan pulsa yang akan kamu convert", style: TextStyle( fontSize: 16, color: Colors.white), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                        ),
                      ),
                      onPressed: () async{
                        _liquidController.animateToPage(page: 3);
                      },
                      child:  Text(
                        "Next",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.apply(color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: MyColors.secondaryVariant,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/img_onboarding_4.png", height: 300,),
                        SizedBox(height: 50,),
                        Text("Follow your dreams",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Pilih provider yang sesuai dengan pulsa yang akan kamu convert", style: TextStyle( fontSize: 16, color: Colors.white), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 20,
                        height: 5,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                        ),
                      ),
                      onPressed: () async{
                        ScreenUtils(context).navigateTo(const DashboardScreen(), replaceScreen: true);
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setBool(PrefData.firstOpenApp, false);
                      },
                      child:  Text(
                        "Start",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.apply(color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
        enableLoop: false,
        fullTransitionValue: 300,
        slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.white,),
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
        liquidController: _liquidController,
      ),
    );
  }
}
