import 'package:bugetin/res/my_colors.dart';
import 'package:bugetin/ui/home/components/home_ads_banner.dart';
import 'package:bugetin/ui/home/components/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset("assets/ic_logo_appbar.png"),
        leadingWidth: 60,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(16), // Image radius
                child: SvgPicture.asset("assets/avatar.svg",width: 10,),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, i) {
          if(i == 0){
            return HomeHeader();
          }else if(i == 1){
            return HomeAdsBanner();
          }else{
            return Container();
          }
        },
      ),
    );
  }
}
