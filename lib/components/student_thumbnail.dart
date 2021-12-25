import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../grpc_stub/student.pb.dart';
import '../models/student_manager.dart';

class StudentThumbnail extends StatefulWidget {
  final StudentReadResponse student;

  const StudentThumbnail({
    Key? key,
    required this.student,
  }) : super(key: key);

  @override
  State<StudentThumbnail> createState() => _StudentThumbnailState();
}

class _StudentThumbnailState extends State<StudentThumbnail> {
  bool _editMode = false;
  Gender? _gender;

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController(text: widget.student.name);
    final _ageController = TextEditingController(
      text: widget.student.age.toString(),
    );
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Visibility(
                visible: !_editMode,
                child: Text(
                  widget.student.name,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            Visibility(
                visible: _editMode,
                child: SizedBox(
                    width: 100, child: TextField(controller: _nameController))),
            const SizedBox(width: 16.0),
            Visibility(
                visible: !_editMode,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    setState(() {
                      _editMode = true;
                    });
                  },
                )),
            Visibility(
                visible: _editMode,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.save),
                      onPressed: () {
                        Provider.of<StudentManager>(context, listen: false)
                            .updateStudent(
                                widget.student.schoolId,
                                widget.student.studentId,
                                _nameController.value.text,
                                int.parse(_ageController.value.text),
                                _gender!);
                      },
                    ),
                    const SizedBox(width: 16.0),
                    IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        setState(() {
                          _editMode = false;
                        });
                      },
                    )
                  ],
                )),
            const SizedBox(width: 16.0),
            Visibility(
              visible: !_editMode,
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  Provider.of<StudentManager>(context, listen: false)
                      .deleteStudent(
                          widget.student.schoolId, widget.student.studentId);
                },
              ),
            )
          ]),
          Row(
            children: [
              Text('School Id', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Text(
                widget.student.schoolId,
              ),
              const SizedBox(width: 16.0),
              Text('Student Id', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Text(
                widget.student.studentId,
              ),
              const SizedBox(width: 16.0),
              Text('Age(years)', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Visibility(
                visible: !_editMode,
                child: Text(
                  widget.student.age.toString(),
                ),
              ),
              Visibility(
                  visible: _editMode,
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                        controller: _ageController,
                        maxLength: 3,
                      ))),
              const SizedBox(width: 16.0),
              Text('Gender', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(width: 5.0),
              Visibility(
                visible: !_editMode,
                child: Text(
                  widget.student.gender.toString(),
                ),
              ),
              Visibility(
                visible: _editMode,
                child: DropdownButton<Gender>(
                    value: widget.student.gender,
                    onChanged: (_newValue) {
                      setState(() {
                        print('newValue=${_newValue}');
                        _gender = _newValue;
                      });
                    },
                    items: Gender.values
                        .map((Gender g) =>
                            DropdownMenuItem(value: g, child: Text(g.name)))
                        .toList()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
