import 'package:flutter/material.dart';

class Gridss extends StatelessWidget {
  const Gridss({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
          children: [
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
            Container(
              color: Color.fromARGB(255, 238, 200, 200),
            ),
          ],
        ),
      ),
    ));
  }
}
