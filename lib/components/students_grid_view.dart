import 'package:flutter/material.dart';

import '../components/components.dart';
import '../grpc_stub/student.pbgrpc.dart';

class StudentsGridView extends StatelessWidget {
  final List<StudentReadResponse> students;
  final _controller = ScrollController();

  StudentsGridView({
    Key? key,
    required this.students,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller,
      itemCount: students.length,
      itemBuilder: (context, index) {
        return StudentThumbnail(student: students[index]);
      },
    );
  }
}
