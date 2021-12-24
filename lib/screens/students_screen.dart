import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../grpc_stub/student.pb.dart';
import '../models/student_manager.dart';
import '../components/components.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({Key? key}) : super(key: key);

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<StudentManager>(
      builder: (context, manager, child) {
        return FutureBuilder(
          future: Provider.of<StudentManager>(context, listen: false)
              .listAllStudents(),
          builder: (context, AsyncSnapshot<StudentListResponse> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final listResponse = snapshot.data;
              final students = (listResponse != null)
                  ? listResponse.students
                  : <StudentReadResponse>[];
              print('students size=${students.length}');
              return StudentsGridView(students: students);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        );
      },
    );
  }
}
