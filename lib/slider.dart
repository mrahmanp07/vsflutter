import 'package:first_app/mainpage.dart';
import 'package:first_app/page2.dart';
import 'package:first_app/page3.dart';
import 'package:flutter/material.dart';

class Sliderss extends StatefulWidget {
  const Sliderss({super.key});

  @override
  State<Sliderss> createState() => _sliderState();
}

class _sliderState extends State<Sliderss> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          children: [
            Mainpage1(),
            Page2(),
            Page3(),
            Mainpage1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
