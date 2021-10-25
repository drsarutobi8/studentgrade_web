import 'package:flutter/material.dart';
import '../model/student.dart';

class StudentDetailsPage extends Page {
  final Student student;

  StudentDetailsPage({
    this.student,
  }) : super(key: ValueKey(student));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return StudentDetailsScreen(student: student);
      },
    );
  }
}
