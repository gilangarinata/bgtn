import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../res/my_colors.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [
          SizedBox(
            height: 12,
          ),
          CarouselSlider(
              items: buildCarousel(),
              options: CarouselOptions(
                height: 140,
                aspectRatio: 16 / 9,
                viewportFraction: 0.94,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: true,
                onPageChanged: (index, as) {
                  setState(() {
                    _current = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildDots(),
          ),
        ]),
      ],
    );
  }

  List<Widget> buildDots() {
    return [0, 1].map((e) {
      return Container(
        width: 18.0,
        height: 4.0,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: _current == e
                ? MyColors.primary
                : Color.fromRGBO(0, 0, 0, 0.2)),
      );
    }).toList();
  }

  List<Widget> buildCarousel() {
    return [1, 2]
            .map((e) => InkWell(
                  onTap: () async {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/bg_banner_1.png",
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Balance", style: TextStyle(color: Colors.white),),
                                Text("\$300.000", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Expense", style: TextStyle(color: Colors.white),),
                                          Text("\$300.000", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                        ],
                                      ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("Income", style: TextStyle(color: Colors.white),),
                                        Text("\$300.000", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ))
            .toList() ??
        [];
  }
}
