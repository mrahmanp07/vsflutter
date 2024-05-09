import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 232, 205, 3),
          child: Card(
            elevation: 80.0,
            color: Color.fromARGB(255, 255, 238, 111),
            child: Image.network(
                "https://cdn.pixabay.com/photo/2024/02/15/16/57/cat-8575768_1280.png"),
          ),
        ),
      ),
    );
  }
}
