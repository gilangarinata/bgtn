import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [
          // CarouselSlider(
          //     items: buildCarousel(),
          //     options: CarouselOptions(
          //       height: 140,
          //       aspectRatio: 16/9,
          //       viewportFraction: 0.8,
          //       initialPage: 0,
          //       enableInfiniteScroll: true,
          //       reverse: false,
          //       autoPlay: true,
          //       autoPlayInterval: Duration(seconds: 8),
          //       autoPlayAnimationDuration: Duration(milliseconds: 800),
          //       autoPlayCurve: Curves.fastOutSlowIn,
          //       enlargeCenterPage: true,
          //       onPageChanged: (index,as){
          //         setState(() {
          //           _current = index;
          //         });
          //       },
          //       scrollDirection: Axis.horizontal,
          //     )
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: buildDots(),
          // ),

        ]),
      ],
    );
  }
}
