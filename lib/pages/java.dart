import 'package:flutter/material.dart';

class Java extends StatelessWidget {
  const Java({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RichText(
        text: TextSpan(
          text: '',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
          children: <TextSpan>[
            TextSpan(
              text: 'This page is under construction!',
              style: TextStyle(fontWeight: FontWeight.bold, )
            ),
          ],
        ),
            ),
      )
    );
  }
}