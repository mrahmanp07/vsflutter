import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  TextEditingController mailTEC = TextEditingController();
  TextEditingController passTEC = TextEditingController();
  final String login = 'http://192.168.20.46:8080/api/auth/signin';

  Future<void> loginData() async {
    var reqBody = {"username": mailTEC.text, "password": passTEC.text};

    var response = await http.post(Uri.parse(login),
        headers: {"Content-Type": "Application/json"},
        body: jsonEncode(reqBody));

    var jsonResponse = jsonDecode(response.body);

    const storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: jsonResponse['jwtToken']);

    print(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromARGB(255, 220, 222, 219),
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 35.0,
              ),
              Image(
                // image: AssetImage("Asset/javalogo.png"),
                image: AssetImage("Asset/login3.png"),
                width: 300.0,
                height: 350.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Login as Student",
                style: GoogleFonts.adamina(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80, 50, 80, 1),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: mailTEC,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    TextField(
                      controller: passTEC,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextButton(
                        onPressed: () {
                          // if (!mailTEC.text.contains("@")) {
                          //   displayToastMessage(
                          //     "Invalid Email aaddress!",
                          //   );
                          // } else if (PassTEC.text.length < 6) {
                          //   displayToastMessage(
                          //     "Invalid Password",
                          //   );
                          // } else {
                          //   //   displayToastMessage(
                          //   //       emailTextEditingController.text +
                          //   //           " " +
                          //   //           passTextEditingController.text);
                          // }
                          // displayToastMessage(
                          //   "Invalid Password",
                          // );
                          // Fluttertoast.showToast(msg: "");

                          // print("-------------------");
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(156, 43, 178, 183)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(
                                        color: Color.fromARGB(
                                            210, 55, 232, 238))))),
                        child: TextButton(
                          onPressed: () {
                            loginData();

                            Navigator.pushNamed(context, "/home");
                          },
                          child: Container(
                            width: 120,
                            height: 30.0,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/signup", (route) => true);
                  },
                  child: Text(
                    "Don't have an account? Register here",
                    style: TextStyle(color: Color.fromARGB(255, 1, 117, 59)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

displayToastMessage(String message) {
  // Fluttertoast.showToast(msg: message);
}
