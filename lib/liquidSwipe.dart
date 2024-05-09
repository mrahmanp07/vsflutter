import 'package:first_app/mainpage.dart';
import 'package:first_app/page2.dart';
import 'package:first_app/page3.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwie extends StatelessWidget {
  const LiquidSwie({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Mainpage1(),
      Page2(),
      Page3(),
      Mainpage1(),
      Page2(),
    ];

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        slideIconWidget: Icon(Icons.abc_sharp),
        positionSlideIcon: .05,
      ),
    );
  }
}
