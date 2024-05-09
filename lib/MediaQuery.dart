import 'package:flutter/material.dart';

class MediaQueryyy extends StatelessWidget {
  const MediaQueryyy({super.key});

  @override
  Widget build(BuildContext context) {
    var heightAll = MediaQuery.of(context).size.height;
    var widthAll = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Center(
      child: Container(
        height: heightAll / 5,
        width: widthAll / 3,
        color: Color.fromARGB(255, 238, 227, 227),
        // child: new Text("hgdsafkdshgfkdghs", style: TextDecoration(deco),),
      ),
    ));
  }
}
