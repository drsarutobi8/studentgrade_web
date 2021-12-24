import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fooderlich/models/student_manager.dart';
import 'package:provider/provider.dart';

import '../grpc_stub/student.pb.dart';

class StudentThumbnail extends StatelessWidget {
  final StudentReadResponse student;

  const StudentThumbnail({
    Key? key,
    required this.student,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(
              student.name,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(width: 16.0),
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                Provider.of<StudentManager>(context, listen: false)
                    .updateStudent(student.schoolId, student.studentId,
                        student.name, student.age, student.gender);
              },
            ),
            const SizedBox(width: 16.0),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                Provider.of<StudentManager>(context, listen: false)
                    .deleteStudent(student.schoolId, student.studentId);
              },
            )
          ]),
          Row(
            children: [
              Text('School Id', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Text(
                student.schoolId,
              ),
              const SizedBox(width: 16.0),
              Text('Student Id', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Text(
                student.studentId,
              ),
              const SizedBox(width: 16.0),
              Text('Age(years)', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Text(
                student.age.toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
