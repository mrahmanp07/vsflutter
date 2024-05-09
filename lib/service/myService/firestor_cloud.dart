import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app/service/myService/student.dart';
import 'package:first_app/service/myService/studnet_constant.dart';

class FirebaseCloudService {
// Sigleton instance
  static final FirebaseCloudService _shared =
      FirebaseCloudService._sharedInstance();

  FirebaseCloudService._sharedInstance();

  factory FirebaseCloudService() => _shared;
// ----------------

  final _student = FirebaseFirestore.instance.collection("student");

  Stream<Iterable<Student>> allstudent() => _student
      .orderBy(stuName, descending: false)
      .snapshots()
      .map((snap) => snap.docs.map(
            (doc) => Student.fromSnapshot(doc),
          ));

  Future<void> addNewstudent({required Student student}) async {
    await _student.add({
      stuName: student.name,
      stuEmail: student.email,
      stuAge: student.age,
      stuClass: student.calss,
    });

    return Future.value();
  }

  Future<Iterable<Student>> getstudentById({
    required String id,
  }) async {
    try {
      return await _student
          .where(
            stuId,
            isEqualTo: id,
          )
          .get()
          .then((value) => value.docs.map((doc) {
                return Student.fromSnapshot(doc);
              }));
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> updatestudent({
    required id,
    required Student student,
  }) async {
    try {
      await _student.doc(id).update({
        stuName: student.name,
        stuEmail: student.email,
        stuAge: student.age,
        stuClass: student.calss,
      });
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> deleteNote({
    required String id,
  }) async {
    try {
      await _student.doc(id).delete();
    } catch (e) {
      throw Exception();
    }
  }
}
