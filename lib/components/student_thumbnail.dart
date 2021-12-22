import 'package:flutter/material.dart';

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
          // Expanded(
          //   child: ClipRRect(
          //     //child: Image.asset('${student.dishImage}', fit: BoxFit.cover),
          //     child: Image.asset('assets/magazine_pics/card_bread.jpg',
          //         fit: BoxFit.cover),
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          // ),
          // const SizedBox(height: 10),
          Text(
            student.name,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            student.age.toString(),
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
