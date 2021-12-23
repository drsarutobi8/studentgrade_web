import 'package:flutter/material.dart';

import '../components/components.dart';
import '../grpc_stub/student.pbgrpc.dart';

class StudentsGridView extends StatelessWidget {
  final List<StudentReadResponse> students;

  const StudentsGridView({
    Key? key,
    required this.students,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentThumbnail(student: students[index]);
        });

    // Padding(
    //   padding: const EdgeInsets.only(
    //     left: 1, //16,
    //     right: 1, //16,
    //     top: 1, //16,
    //   ),
    //   child: GridView.builder(
    //     itemCount: students.length,
    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //     ),
    //     itemBuilder: (context, index) {
    //       final student = students[index];
    //       return StudentThumbnail(student: student);
    //     },
    //   ),
    // );
  }
}
