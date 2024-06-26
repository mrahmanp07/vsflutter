import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController applicantName = TextEditingController();
  TextEditingController applicantUsername = TextEditingController();
  TextEditingController applicantPassword = TextEditingController();
  TextEditingController applicantEmail = TextEditingController();
  TextEditingController applicantPhone = TextEditingController();
  TextEditingController applicantNid = TextEditingController();
  TextEditingController applicantDesignation = TextEditingController();
  TextEditingController applicantWorkplace = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Color.fromARGB(221, 237, 238, 236),

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
                image: AssetImage("Asset/signup1.png"),
                width: 200.0,
                height: 200.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Signup as Student",
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
                      controller: applicantName,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    TextField(
                      controller: applicantUsername,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                          labelText: "Address",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    TextField(
                      controller: applicantEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    TextField(
                      controller: applicantPassword,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          )),
                    ),
                    TextField(
                      controller: applicantPhone,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    TextField(
                      controller: applicantNid,
                      
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          labelText: "Date of birth",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          hintStyle: TextStyle()),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextButton(
                        onPressed: () {
                          if (!applicantEmail.text.contains("@")) {
                            displayToastMessage(
                              "Invalid Email aaddress!",
                            );
                          } else if (applicantPassword.text.length <
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
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 68, 160, 154)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(color: Colors.green)))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Container(
                            width: 120,
                            height: 30.0,
                            child: Center(
                              child: Text(
                                "Signup",
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
                        context, "/login", (route) => true);
                  },
                  child: Text(
                    "Already have an account? Login ",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 1, 133, 241)),
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

getCurrentDate() {
var date = DateTime.now().toString();

var dateParse = DateTime.parse(date);

var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

setState(() {
  var finalDate = formattedDate.toString();
});}

void setState(Null Function() param0) {
}
