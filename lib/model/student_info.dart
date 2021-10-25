import 'student.dart';

class StudentInfo extends Student {
  final Grade _maths;
  final Grade _art;
  final Grade _chemistry;

  Grade get maths => _maths;
  Grade get art => _art;
  Grade get chemistry => _chemistry;

  StudentInfo(String schoolId, String studentId, String name, int age,
      Gender gender, this._maths, this._art, this._chemistry)
      : super(schoolId, studentId, name, age, gender);
}

enum Grade {
  PASS,
  FAIL,
  UNKNOWN,
}
