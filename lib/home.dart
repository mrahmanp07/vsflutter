import 'package:first_app/mainpage.dart';
import 'package:first_app/page2.dart';
import 'package:first_app/page3.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Virtual School",
              style: TextStyle(
                  color: Color.fromARGB(197, 240, 211, 240),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
          toolbarOpacity: 1,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(179, 1, 138, 40),
          actions: [
            IconButton(
                onPressed: () {
                  print("object");
                },
                icon: Icon(Icons.notification_add)),
            IconButton(
              icon: TextButton(onPressed: () { Navigator.pushNamed(context, "/login"); },
                child: Icon(Icons.login)),
                onPressed: () {
                              

                },
                ),
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.notifications_active)),
            Tab(icon: Icon(Icons.chat)),
            Tab(icon: Icon(Icons.perm_contact_cal))
          ]),
        ),

        body: TabBarView(children: [
          Mainpage1(),
          Page2(),
          Page3(),
          Page2(),
        ]),

        // body: SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Column(
        //     children: [
        //       // Expanded(
        //       //     child: Container(
        //       //   color: Color.fromARGB(255, 245, 106, 106),
        //       //   height: double.infinity,
        //       //   child: Text(
        //       //     "Polin",
        //       //     style: TextStyle(
        //       //       color: Color.fromARGB(255, 250, 243, 243),
        //       //     ),
        //       //   ),
        //       // )),
        //       // Expanded(
        //       //     child: Container(
        //       //   color: Color.fromARGB(255, 220, 245, 80),
        //       //   height: double.infinity,
        //       //   child: Text(
        //       //     "Polin",
        //       //     style: TextStyle(
        //       //       color: Color.fromARGB(255, 249, 9, 9),
        //       //     ),
        //       //   ),
        //       // )),
        //       // Expanded(
        //       //     child: Container(
        //       //   color: Color.fromARGB(255, 92, 252, 122),
        //       //   height: double.infinity,
        //       //   child: Text(
        //       //     "Polin",
        //       //     style: TextStyle(
        //       //       color: Color.fromARGB(255, 249, 9, 9),
        //       //     ),
        //       //   ),
        //       // )),
        //       // Expanded(
        //       //     child: Container(
        //       //   color: Color.fromARGB(255, 96, 205, 224),
        //       //   height: double.infinity,
        //       //   child: Text(
        //       //     "Polin",
        //       //     style: TextStyle(
        //       //       color: Color.fromARGB(255, 249, 9, 9),
        //       //     ),
        //       //   ),
        //       // )),

        //       Container(
        //         color: Color.fromARGB(255, 240, 196, 177),
        //         height: 300,
        //         width: double.infinity,
        //         child: SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             children: [
        //               Container(
        //                 color: Color.fromARGB(255, 183, 12, 115),
        //                 width: 200,
        //                 // margin: EdgeInsets.all(10),
        //                 margin: EdgeInsets.fromLTRB(10, 10, 10, 90),

        //                 child: Card(
        //                   elevation: 80.0,
        //                   child: Image.network(
        //                       "https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954_1280.jpg"),
        //                 ),

        //                 // decoration: BoxDecoration(
        //                 //   borderRadius: BorderRadius.circular(5.0),
        //                 //   color: Colors.white,
        //                 //   boxShadow: [
        //                 //     BoxShadow(
        //                 //       color: Colors.grey,
        //                 //       offset: Offset(0.0, 1.0), //(x,y)
        //                 //       blurRadius: 6.0,
        //                 //     ),
        //                 //   ],
        //                 // ),
        //               ),
        //               Container(
        //                 color: Color.fromARGB(255, 89, 112, 215),
        //                 width: 200,
        //                 margin: EdgeInsets.fromLTRB(10, 90, 10, 10),
        //                 child: Card(
        //                   elevation: 80.0,
        //                   child: Image.network(
        //                       "https://cdn.pixabay.com/photo/2018/10/08/14/46/bird-3732867_640.jpg"),
        //                 ),
        //               ),
        //               Container(
        //                 color: Color.fromARGB(255, 196, 243, 43),
        //                 width: 200,
        //                 margin: EdgeInsets.fromLTRB(10, 0, 10, 90),
        //                 child: Card(
        //                   elevation: 80.0,
        //                   child: Image.network(
        //                       "https://media.istockphoto.com/id/511317236/photo/common-barn-owl-close-up.jpg?s=1024x1024&w=is&k=20&c=ClJf0BFU0yzrfip67BaK6v9UG0_zOHkDrFWAJoklFAE="),
        //                 ),
        //               ),
        //               Container(
        //                 color: Color.fromARGB(255, 62, 201, 243),
        //                 width: 200,
        //                 margin: EdgeInsets.fromLTRB(10, 90, 10, 0),
        //                 child: Card(
        //                   elevation: 80.0,
        //                   child: Image.network(
        //                       "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg"),
        //                 ),
        //               ),
        //               Container(
        //                   // color: Color.fromARGB(255, 62, 201, 243),
        //                   height: double.infinity,
        //                   width: 250,

        //                   // width: 200,
        //                   // margin: EdgeInsets.fromLTRB(10, 90, 10, 0),
        //                   child: CircleAvatar(
        //                     backgroundColor: Colors.amberAccent,
        //                     backgroundImage: AssetImage("Asset/fi1.jpg"),
        //                   )),
        //             ],
        //           ),
        //         ),
        //       ),

        //       Container(
        //         color: Color.fromARGB(255, 139, 239, 116),
        //         // height: 350,
        //         // width: double.infinity,
        //         // child: Text(
        //         //   "Tanvir",
        //         //   style: TextStyle(
        //         //     color: Color.fromARGB(255, 249, 9, 9),
        //         //   ),

        //         child: Card(
        //           elevation: 80.0,
        //           child: Image.network(
        //               "https://cdn.pixabay.com/photo/2023/04/27/14/27/butterfly-7954767_640.jpg"),
        //         ),
        //       ),

        //       Container(
        //         color: Color.fromARGB(255, 129, 226, 243),
        //         // height: 700,
        //         width: double.infinity,
        //         child: Card(
        //           child: Image.network(
        //               "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_1280.jpg"),
        //         ),
        //       ),

        //       Container(
        //         color: Color.fromARGB(255, 129, 226, 243),
        //         // height: 700,
        //         width: double.infinity,
        //         child: Card(child: Image.asset("Asset/fi1.jpg")),
        //       )
        //     ],
        //   ),
        // ),
        drawer: Drawer(
          child: OfficeDrawerList(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _currerntPage = 0;

  final pages = [
    Mainpage1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currerntPage,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 246, 36, 36),
              label: "---A---",
              icon: Icon(Icons.account_balance)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              label: "---B---",
              icon: Icon(Icons.account_balance)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              label: "---C---",
              icon: Icon(Icons.account_balance)),
        ],
        onTap: (value) {
          setState(() {
            _currerntPage = value;
          });
        },
      ),
      body: pages[_currerntPage],
    );
  }
}
