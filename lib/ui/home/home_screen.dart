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
      backgroundColor: Color(0xffF3F7FF),
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset("assets/ic_logo_appbar.png"),
        leadingWidth: 50,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, i) {
          return Container();
        },
      ),
    );
  }
}
