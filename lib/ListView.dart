import 'package:flutter/material.dart';

class ListViewss extends StatelessWidget {
  const ListViewss({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Abir Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_call),
            ),
            trailing: Icon(Icons.downhill_skiing_outlined),
            contentPadding: EdgeInsets.all(20),
          ),
          ListTile(
            title: Text("Tanvir Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Shrif Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Salman Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Honee Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Shuvo Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Zaman Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Nazmul vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Hasnat Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Imran Vai"),
            subtitle: Text("+8801758236548"),
            leading: CircleAvatar(
              child: Icon(Icons.add_ic_call_outlined),
            ),
            trailing: Icon(Icons.account_circle),
          ),
        ],
      ),
    ));
  }
}
