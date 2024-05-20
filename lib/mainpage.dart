import 'package:flutter/material.dart';

class Mainpage1 extends StatelessWidget {
  const Mainpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Virtual School",
      //       style: TextStyle(
      //           color: Color.fromARGB(197, 240, 211, 240),
      //           fontStyle: FontStyle.italic,
      //           fontWeight: FontWeight.bold)),
      //   toolbarOpacity: 1,
      //   centerTitle: true,
      //   backgroundColor: const Color.fromARGB(179, 1, 138, 40),
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           print("object");
      //         },
      //         icon: Icon(Icons.notification_add)),
      //     IconButton(
      //         onPressed: () {
      //           print("object");
      //         },
      //         icon: Icon(Icons.login)),
      //   ],
      //   bottom: TabBar(tabs: [
      //     Tab(icon: Icon(Icons.ac_unit)),
      //     Tab(icon: Icon(Icons.accessibility_new_sharp)),
      //     Tab(icon: Icon(Icons.adb_outlined))
      //   ]),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Expanded(
            //     child: Container(
            //   color: Color.fromARGB(255, 245, 106, 106),
            //   height: double.infinity,
            //   child: Text(
            //     "Polin",
            //     style: TextStyle(
            //       color: Color.fromARGB(255, 250, 243, 243),
            //     ),
            //   ),
            // )),
            // Expanded(
            //     child: Container(
            //   color: Color.fromARGB(255, 220, 245, 80),
            //   height: double.infinity,
            //   child: Text(
            //     "Polin",
            //     style: TextStyle(
            //       color: Color.fromARGB(255, 249, 9, 9),
            //     ),
            //   ),
            // )),
            // Expanded(
            //     child: Container(
            //   color: Color.fromARGB(255, 92, 252, 122),
            //   height: double.infinity,
            //   child: Text(
            //     "Polin",
            //     style: TextStyle(
            //       color: Color.fromARGB(255, 249, 9, 9),
            //     ),
            //   ),
            // )),
            // Expanded(
            //     child: Container(
            //   color: Color.fromARGB(255, 96, 205, 224),
            //   height: double.infinity,
            //   child: Text(
            //     "Polin",
            //     style: TextStyle(
            //       color: Color.fromARGB(255, 249, 9, 9),
            //     ),
            //   ),
            // )),

            // Center(
            //   child: const Text("Our Online Courses: "),
            // ),

            Container(
              color: Color.fromARGB(169, 252, 252, 252),
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(7.0),
                child: Row(
                  children: [
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            // color: Color.fromARGB(255, 62, 201, 243),
                            height: double.infinity,
                            width: 65,

                            // width: 200,
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: CircleAvatar(
                              // backgroundColor: Color.fromARGB(255, 212, 240, 187),
                              backgroundImage: AssetImage("Asset/javalogo.png"),
                            )),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/javaCourse");
                      },
                    ),

                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            // color: Color.fromARGB(255, 62, 201, 243),
                            height: double.infinity,
                            width: 65,

                            // width: 200,
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: CircleAvatar(
                              // backgroundColor: Color.fromARGB(255, 212, 240, 187),
                              backgroundImage: AssetImage("Asset/c#.png"),
                            )),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/csharpCourse");
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                          // color: Color.fromARGB(255, 62, 201, 243),
                          height: double.infinity,
                          width: 65,

                          // width: 200,
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: CircleAvatar(
                            // backgroundColor: Color.fromARGB(255, 212, 240, 187),
                            backgroundImage: AssetImage("Asset/python.png"),
                          )),
                    ),
                    TextButton(
                      child: Container(
                          // color: Color.fromARGB(255, 62, 201, 243),
                          height: double.infinity,
                          width: 65,

                          // width: 200,
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: CircleAvatar(
                            // backgroundColor: Color.fromARGB(255, 212, 240, 187),
                            backgroundImage: AssetImage("Asset/php.png"),
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, "/addimage");
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/java");
                      },
                      child: Container(
                          // color: Color.fromARGB(255, 62, 201, 243),
                          height: double.infinity,
                          width: 65,

                          // width: 200,
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: CircleAvatar(
                            // backgroundColor: Color.fromARGB(255, 212, 240, 187),
                            backgroundImage: AssetImage("Asset/js.png"),
                          )),
                    ),
                    FloatingActionButton(onPressed: () {
                      icon:
                      const Icon(Icons.add);
                      Navigator.pushNamed(context, "/addimage");
                    })
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
                  trailing: <Widget>[
                    Tooltip(
                      message: 'Change brightness mode',
                      child: IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: const Icon(Icons.wb_sunny_outlined),
                        selectedIcon: const Icon(Icons.brightness_2_outlined),
                      ),
                    )
                  ],
                );
              }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              }),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              // color: Color.fromARGB(255, 139, 239, 116),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.0),
                bottomRight: Radius.circular(100.0),
              )),
              height: 170,
              width: 380,
              child: Card(
                elevation: 80.0,
                child: Image.asset("Asset/cs3.png", width: double.infinity),

                // color: Color.fromARGB(255, 90, 172, 244),
              ),
            ),
            // child: Text(
            //   "Tanvir",
            //   style: TextStyle(
            //     color: Color.fromARGB(255, 249, 9, 9),
            //   ),

            Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              child: GridView.count(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 4,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/java");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://thumbs.dreamstime.com/z/group-school-kids-raising-hands-classroom-education-elementary-learning-people-concept-teacher-sitting-57655971.jpg?ct=jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/java");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://thumbs.dreamstime.com/z/kids-raising-hands-to-answer-elementary-school-class-71529052.jpg?ct=jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/java");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://assets-global.website-files.com/60e615980cab093e6f2db3c3/60f1c6dd76fbf14c6beda3cf_GettyImages-1212945980-p-1080.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),

                  // Container(
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //       image: DecorationImage(
                  //           image: NetworkImage(
                  //               "https://assets-global.website-files.com/60e615980cab093e6f2db3c3/60f1c6dd76fbf14c6beda3cf_GettyImages-1212945980-p-1080.jpeg"),
                  //           fit: BoxFit.cover)),
                  // ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.peoplelinkvc.com/wp-content/uploads/2021/09/smart-virtual-classroom-solution.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage("Asset/class.2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://vibe.us/blog/set-up-virtual-classroom/cover_hu3d03a01dcc18bc5be0e67db3d8d209a6_184197_1280x0_resize_q90_h2_lanczos.fb14c134342d2bea0403db653637a3ce725f63e353d3537016bf81f05e1367bb.webp"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.elearningindustry.com/wp-content/uploads/2016/05/5-teaching-techniques-virtual-classroom.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-pbo047f4ql7d8un4n538sjvmh0-20200611121448.Medi.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://blog.globalindianschool.org/hubfs/IMG_0300.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),

            Container(
              height: 350,
              width: double.infinity,
              child: Card(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/java");
                  },
                  child: Image.network(
                      "https://thumbs.dreamstime.com/z/group-school-kids-raising-hands-classroom-education-elementary-learning-people-concept-teacher-sitting-57655971.jpg?ct=jpeg"),
                ),
              ),
            ),

            Container(
              color: Color.fromARGB(255, 149, 122, 205),
              // height: 700,
              width: double.infinity,
              child: Card(child: Image.asset("Asset/fi1.jpg")),
            )
          ],
        ),
      ),
      drawer: Container(
        child: OfficeDrawerList(),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class OfficeDrawerList extends StatefulWidget {
  const OfficeDrawerList({super.key});

  @override
  State<OfficeDrawerList> createState() => _OfficeDrawerListState();
}

class _OfficeDrawerListState extends State<OfficeDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.dashboard,
            color: Colors.green,
          ),
          title: const Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, "/home");
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.green,
          ),
          title: const Text('Students'),
          onTap: () {
            Navigator.pushNamed(context, "/dataList");
            // Navigator.of(context)
            //     .pushNamedAndRemoveUntil("/student", (route) => false);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.menu_book,
            color: Colors.green,
          ),
          title: const Text('Courses'),
          onTap: () {
            Navigator.pushNamed(context, "/java");
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.report,
            color: Colors.green,
          ),
          title: const Text('About us'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.share,
            color: Colors.green,
          ),
          title: const Text('Share'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.star,
            color: Colors.green,
          ),
          title: const Text('Rate Use'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.red,
          ),
          title: const Text('Logout'),
          onTap: () {
            Navigator.pushNamed(context, "/login");
          },
        ),
      ],
    );
  }
}
