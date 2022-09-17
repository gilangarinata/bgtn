import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../res/my_colors.dart';

class HomeAdsBanner extends StatefulWidget {
  const HomeAdsBanner({Key? key}) : super(key: key);

  @override
  State<HomeAdsBanner> createState() => _HomeAdsBannerState();
}

class _HomeAdsBannerState extends State<HomeAdsBanner> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/ic_gift.svg",
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Referral",
                        style: TextStyle(color: MyColors.primary, fontSize: 18),
                      ),
                      Text(
                        "Invite your friend to get 1 month ads-free!",
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios_outlined, color: MyColors.grey_40,)
              ],
            ),
          )),
    );
  }
}
