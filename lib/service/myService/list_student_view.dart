import 'package:first_app/service/myService/firestor_cloud.dart';
import 'package:first_app/service/myService/student.dart';
import 'package:flutter/material.dart';

class ListStudnetView extends StatefulWidget {
  const ListStudnetView({super.key});

  @override
  State<ListStudnetView> createState() => _ListStudnetViewState();

}

class _ListStudnetViewState extends State<ListStudnetView> {
  final _studnetService = FirebaseCloudService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _studnetService.allstudent(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.waiting:
              if (snapshot.hasData) {
                final students = snapshot.data!;
                return ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final stu = students.elementAt(index);
                    return ListTile(
                      title: Text(stu.name),
                      subtitle: Text(stu.email),
                      onTap: () {},
                      trailing: TextButton(
                        onPressed: () async {
                          await _studnetService.deleteNote(id: stu.id);
                        },
                        child: const Icon(Icons.delete),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }
}
