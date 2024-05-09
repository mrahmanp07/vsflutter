import 'package:first_app/Login.dart';
import 'package:first_app/RegisterForm.dart';
import 'package:first_app/Signup.dart';
import 'package:first_app/home.dart';
import 'package:first_app/pages/api_call.dart';
import 'package:first_app/pages/create.dart';
import 'package:first_app/pages/data_list.dart';
import 'package:first_app/pages/java.dart';
import 'package:first_app/service/myService/list_student_view.dart';
import 'package:first_app/sidenav.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(const MyApp(
      // token: prefs.getString('token');
      ));
}

class MyApp extends StatelessWidget {
  final token;
  const MyApp({
    @required this.token,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(197, 227, 227, 3)),
          primarySwatch: Colors.deepPurple),
      initialRoute: "/home",
      routes: {
        "/login": (context) => LoginScreen(),
        "/signup": (context) => Signupscreen(),
        "/home": (context) => Home(),
        "/nav": (context) => NavigationRailPage(),
        "/java": (context) => Java(),
        "/student": (context) => ListStudnetView(),
        "/apicall": (context) => ApiCall(),
        "/dataList": (context) => Home2(),
        "/createuser": (context) => FormPage2(),
        "/regForm": (context) => RegisterForm(
              title: 'Student registration form',
            ),
      },
      debugShowCheckedModeBanner: false,
      // home: Home(),
      // home: MyWidget(),
      // home: Sliderss(),
      // home: Gridss(),
      // home: LiquidSwie(),
      // home: MediaQueryyy(),
      // home: ListViewss(),
      // home: LoginScreen(),
      // home: Signupscreen(),
      // home: RegisterForm(),
    );
  }
}
