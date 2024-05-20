import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class JavaCourse extends StatefulWidget {
  const JavaCourse({super.key});

  @override
  State<JavaCourse> createState() => _JavaCourseState();
}

class _JavaCourseState extends State<JavaCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                'Asset/javalogo.png', // Replace with your image URL
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'JAVA',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Java is a popular programming language used for backend web development, desktop applications mobile applications, etc. Java is an emerging course offered by top institutes and universities. Java can be studied as a specialization online or can be studied under a web development course. A web development course would also include related programming languages like HTML, CSS, and react",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '৳16,500/-',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Added to cart')),
                    );
                  },
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}