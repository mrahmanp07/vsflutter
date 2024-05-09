import 'package:first_app/model/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  late List<Users>? _userModel = [];

  final String login = 'http://192.168.20.46:8080/api/users';

  void _getData() async {
    // _userModel = (await ApiService())
    const storage = FlutterSecureStorage();

    try {
      var value = await storage.read(key: 'token');
      print("--value");
      print("value");

      var response = await http.get(Uri.parse(login), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $value",
      });

      _userModel = usersFromJson(response.body);
      Future.delayed(const Duration(seconds: 1))
          .then((value) => setState(() {}));
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Widget _getProductList(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/createuser", (route) => false);
              },
              icon: Icon(Icons.add_chart_sharp)),
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/dataList", (route) => false);
              },
              icon: Icon(Icons.list_alt)),
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/apicall", (route) => false);
              },
              icon: Icon(Icons.login)),
        ],
      ),
      body: _userModel == null
          ? const Center(
              child: LinearProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _userModel!.length,
                itemBuilder: (context, Index) {
                  return ListTile(
                    leading: Icon(Icons.person_pin_sharp),
                    title: Text(_userModel![Index].username.toString()),
                    subtitle: Text(_userModel![Index].email.toString()),
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_box),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                      ),
                    ]),
                    isThreeLine: true,
                  );
                },
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getProductList(context);
  }
}
