import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app/service/myService/studnet_constant.dart';

class Student {
  final String id;
  final String name;
  final String email;
  final String age;
  final String calss;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.calss,
    required this.email,
  });

  Student.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot.id,
        name = snapshot.data()[stuName],
        email = snapshot.data()[stuEmail],
        calss = snapshot.data()[stuClass],
        age = snapshot.data()[stuAge];
}
