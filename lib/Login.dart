import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    TextField(
                      controller: passTextEditingController,
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
                          if (!emailTextEditingController.text.contains("@")) {
                            displayToastMessage(
                              "Invalid Email aaddress!",
                            );
                          } else if (passTextEditingController.text.length <
                              6) {
                            displayToastMessage(
                              "Invalid Password",
                            );
                          } else {
                            //   displayToastMessage(
                            //       emailTextEditingController.text +
                            //           " " +
                            //           passTextEditingController.text);
                          }
                          displayToastMessage(
                            "Invalid Password",
                          );
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
                            // Navigator.pushNamed(context, "/home");
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
  Fluttertoast.showToast(msg: message);
}
