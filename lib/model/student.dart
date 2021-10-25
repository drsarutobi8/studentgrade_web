enum Gender { MALE, FEMALE }

class Student {
  final String _schoolId;
  final String _studentId;
  final String _name;
  final int _age;
  final Gender _gender;

  String get schoolId => _schoolId;
  String get studentID => _studentId;
  String get name => _name;
  int get age => _age;
  Gender get gender => _gender;

  Student(
    this._schoolId,
    this._studentId,
    this._name,
    this._age,
    this._gender,
  );
}
