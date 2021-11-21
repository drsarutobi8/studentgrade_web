///
//  Generated code. Do not modify.
//  source: student.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;

import 'student.pbenum.dart';

export 'student.pbenum.dart';

class StudentInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..hasRequiredFields = false
  ;

  StudentInfoRequest._() : super();
  factory StudentInfoRequest({
    $core.String? schoolId,
    $core.String? studentId,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    return _result;
  }
  factory StudentInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentInfoRequest clone() => StudentInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentInfoRequest copyWith(void Function(StudentInfoRequest) updates) => super.copyWith((message) => updates(message as StudentInfoRequest)) as StudentInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentInfoRequest create() => StudentInfoRequest._();
  StudentInfoRequest createEmptyInstance() => create();
  static $pb.PbList<StudentInfoRequest> createRepeated() => $pb.PbList<StudentInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentInfoRequest>(create);
  static StudentInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);
}

class StudentInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..e<Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..e<Grade>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maths', $pb.PbFieldType.OE, defaultOrMaker: Grade.PASS, valueOf: Grade.valueOf, enumValues: Grade.values)
    ..e<Grade>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'art', $pb.PbFieldType.OE, defaultOrMaker: Grade.PASS, valueOf: Grade.valueOf, enumValues: Grade.values)
    ..e<Grade>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chemistry', $pb.PbFieldType.OE, defaultOrMaker: Grade.PASS, valueOf: Grade.valueOf, enumValues: Grade.values)
    ..hasRequiredFields = false
  ;

  StudentInfoResponse._() : super();
  factory StudentInfoResponse({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? name,
    $core.int? age,
    Gender? gender,
    Grade? maths,
    Grade? art,
    Grade? chemistry,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (maths != null) {
      _result.maths = maths;
    }
    if (art != null) {
      _result.art = art;
    }
    if (chemistry != null) {
      _result.chemistry = chemistry;
    }
    return _result;
  }
  factory StudentInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentInfoResponse clone() => StudentInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentInfoResponse copyWith(void Function(StudentInfoResponse) updates) => super.copyWith((message) => updates(message as StudentInfoResponse)) as StudentInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentInfoResponse create() => StudentInfoResponse._();
  StudentInfoResponse createEmptyInstance() => create();
  static $pb.PbList<StudentInfoResponse> createRepeated() => $pb.PbList<StudentInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentInfoResponse>(create);
  static StudentInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender(Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);

  @$pb.TagNumber(6)
  Grade get maths => $_getN(5);
  @$pb.TagNumber(6)
  set maths(Grade v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaths() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaths() => clearField(6);

  @$pb.TagNumber(7)
  Grade get art => $_getN(6);
  @$pb.TagNumber(7)
  set art(Grade v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasArt() => $_has(6);
  @$pb.TagNumber(7)
  void clearArt() => clearField(7);

  @$pb.TagNumber(8)
  Grade get chemistry => $_getN(7);
  @$pb.TagNumber(8)
  set chemistry(Grade v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasChemistry() => $_has(7);
  @$pb.TagNumber(8)
  void clearChemistry() => clearField(8);
}

class StudentInfoListAllRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentInfoListAllRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StudentInfoListAllRequest._() : super();
  factory StudentInfoListAllRequest() => create();
  factory StudentInfoListAllRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentInfoListAllRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentInfoListAllRequest clone() => StudentInfoListAllRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentInfoListAllRequest copyWith(void Function(StudentInfoListAllRequest) updates) => super.copyWith((message) => updates(message as StudentInfoListAllRequest)) as StudentInfoListAllRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentInfoListAllRequest create() => StudentInfoListAllRequest._();
  StudentInfoListAllRequest createEmptyInstance() => create();
  static $pb.PbList<StudentInfoListAllRequest> createRepeated() => $pb.PbList<StudentInfoListAllRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentInfoListAllRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentInfoListAllRequest>(create);
  static StudentInfoListAllRequest? _defaultInstance;
}

class StudentInfoListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentInfoListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..pc<StudentInfoResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentsInfo', $pb.PbFieldType.PM, protoName: 'studentsInfo', subBuilder: StudentInfoResponse.create)
    ..hasRequiredFields = false
  ;

  StudentInfoListResponse._() : super();
  factory StudentInfoListResponse({
    $core.Iterable<StudentInfoResponse>? studentsInfo,
  }) {
    final _result = create();
    if (studentsInfo != null) {
      _result.studentsInfo.addAll(studentsInfo);
    }
    return _result;
  }
  factory StudentInfoListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentInfoListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentInfoListResponse clone() => StudentInfoListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentInfoListResponse copyWith(void Function(StudentInfoListResponse) updates) => super.copyWith((message) => updates(message as StudentInfoListResponse)) as StudentInfoListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentInfoListResponse create() => StudentInfoListResponse._();
  StudentInfoListResponse createEmptyInstance() => create();
  static $pb.PbList<StudentInfoListResponse> createRepeated() => $pb.PbList<StudentInfoListResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentInfoListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentInfoListResponse>(create);
  static StudentInfoListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StudentInfoResponse> get studentsInfo => $_getList(0);
}

class StudentCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentCreateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..e<Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..hasRequiredFields = false
  ;

  StudentCreateRequest._() : super();
  factory StudentCreateRequest({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? name,
    $core.int? age,
    Gender? gender,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    return _result;
  }
  factory StudentCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentCreateRequest clone() => StudentCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentCreateRequest copyWith(void Function(StudentCreateRequest) updates) => super.copyWith((message) => updates(message as StudentCreateRequest)) as StudentCreateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentCreateRequest create() => StudentCreateRequest._();
  StudentCreateRequest createEmptyInstance() => create();
  static $pb.PbList<StudentCreateRequest> createRepeated() => $pb.PbList<StudentCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentCreateRequest>(create);
  static StudentCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender(Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);
}

class StudentCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentCreateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..e<Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createId')
    ..aOM<$2.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createTime', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  StudentCreateResponse._() : super();
  factory StudentCreateResponse({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? name,
    $core.int? age,
    Gender? gender,
    $core.String? createId,
    $2.Timestamp? createTime,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (createId != null) {
      _result.createId = createId;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    return _result;
  }
  factory StudentCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentCreateResponse clone() => StudentCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentCreateResponse copyWith(void Function(StudentCreateResponse) updates) => super.copyWith((message) => updates(message as StudentCreateResponse)) as StudentCreateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentCreateResponse create() => StudentCreateResponse._();
  StudentCreateResponse createEmptyInstance() => create();
  static $pb.PbList<StudentCreateResponse> createRepeated() => $pb.PbList<StudentCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentCreateResponse>(create);
  static StudentCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender(Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get createId => $_getSZ(5);
  @$pb.TagNumber(6)
  set createId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Timestamp get createTime => $_getN(6);
  @$pb.TagNumber(7)
  set createTime($2.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateTime() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureCreateTime() => $_ensure(6);
}

class StudentReadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentReadRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..hasRequiredFields = false
  ;

  StudentReadRequest._() : super();
  factory StudentReadRequest({
    $core.String? schoolId,
    $core.String? studentId,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    return _result;
  }
  factory StudentReadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentReadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentReadRequest clone() => StudentReadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentReadRequest copyWith(void Function(StudentReadRequest) updates) => super.copyWith((message) => updates(message as StudentReadRequest)) as StudentReadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentReadRequest create() => StudentReadRequest._();
  StudentReadRequest createEmptyInstance() => create();
  static $pb.PbList<StudentReadRequest> createRepeated() => $pb.PbList<StudentReadRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentReadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentReadRequest>(create);
  static StudentReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);
}

class StudentReadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentReadResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..e<Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createId')
    ..aOM<$2.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createTime', subBuilder: $2.Timestamp.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateId')
    ..aOM<$2.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTime', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  StudentReadResponse._() : super();
  factory StudentReadResponse({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? name,
    $core.int? age,
    Gender? gender,
    $core.String? createId,
    $2.Timestamp? createTime,
    $core.String? updateId,
    $2.Timestamp? updateTime,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (createId != null) {
      _result.createId = createId;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    if (updateId != null) {
      _result.updateId = updateId;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    return _result;
  }
  factory StudentReadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentReadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentReadResponse clone() => StudentReadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentReadResponse copyWith(void Function(StudentReadResponse) updates) => super.copyWith((message) => updates(message as StudentReadResponse)) as StudentReadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentReadResponse create() => StudentReadResponse._();
  StudentReadResponse createEmptyInstance() => create();
  static $pb.PbList<StudentReadResponse> createRepeated() => $pb.PbList<StudentReadResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentReadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentReadResponse>(create);
  static StudentReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender(Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get createId => $_getSZ(5);
  @$pb.TagNumber(6)
  set createId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Timestamp get createTime => $_getN(6);
  @$pb.TagNumber(7)
  set createTime($2.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateTime() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureCreateTime() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get updateId => $_getSZ(7);
  @$pb.TagNumber(8)
  set updateId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdateId() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdateId() => clearField(8);

  @$pb.TagNumber(9)
  $2.Timestamp get updateTime => $_getN(8);
  @$pb.TagNumber(9)
  set updateTime($2.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateTime() => clearField(9);
  @$pb.TagNumber(9)
  $2.Timestamp ensureUpdateTime() => $_ensure(8);
}

class StudentListAllRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentListAllRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StudentListAllRequest._() : super();
  factory StudentListAllRequest() => create();
  factory StudentListAllRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentListAllRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentListAllRequest clone() => StudentListAllRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentListAllRequest copyWith(void Function(StudentListAllRequest) updates) => super.copyWith((message) => updates(message as StudentListAllRequest)) as StudentListAllRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentListAllRequest create() => StudentListAllRequest._();
  StudentListAllRequest createEmptyInstance() => create();
  static $pb.PbList<StudentListAllRequest> createRepeated() => $pb.PbList<StudentListAllRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentListAllRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentListAllRequest>(create);
  static StudentListAllRequest? _defaultInstance;
}

class StudentListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..pc<StudentReadResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'students', $pb.PbFieldType.PM, subBuilder: StudentReadResponse.create)
    ..hasRequiredFields = false
  ;

  StudentListResponse._() : super();
  factory StudentListResponse({
    $core.Iterable<StudentReadResponse>? students,
  }) {
    final _result = create();
    if (students != null) {
      _result.students.addAll(students);
    }
    return _result;
  }
  factory StudentListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentListResponse clone() => StudentListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentListResponse copyWith(void Function(StudentListResponse) updates) => super.copyWith((message) => updates(message as StudentListResponse)) as StudentListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentListResponse create() => StudentListResponse._();
  StudentListResponse createEmptyInstance() => create();
  static $pb.PbList<StudentListResponse> createRepeated() => $pb.PbList<StudentListResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentListResponse>(create);
  static StudentListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StudentReadResponse> get students => $_getList(0);
}

class StudentUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..e<Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..hasRequiredFields = false
  ;

  StudentUpdateRequest._() : super();
  factory StudentUpdateRequest({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? name,
    $core.int? age,
    Gender? gender,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    return _result;
  }
  factory StudentUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentUpdateRequest clone() => StudentUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentUpdateRequest copyWith(void Function(StudentUpdateRequest) updates) => super.copyWith((message) => updates(message as StudentUpdateRequest)) as StudentUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentUpdateRequest create() => StudentUpdateRequest._();
  StudentUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<StudentUpdateRequest> createRepeated() => $pb.PbList<StudentUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentUpdateRequest>(create);
  static StudentUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender(Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);
}

class StudentUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..e<Gender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MALE, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateId')
    ..aOM<$2.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTime', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  StudentUpdateResponse._() : super();
  factory StudentUpdateResponse({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? name,
    $core.int? age,
    Gender? gender,
    $core.String? updateId,
    $2.Timestamp? updateTime,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (age != null) {
      _result.age = age;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (updateId != null) {
      _result.updateId = updateId;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    return _result;
  }
  factory StudentUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentUpdateResponse clone() => StudentUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentUpdateResponse copyWith(void Function(StudentUpdateResponse) updates) => super.copyWith((message) => updates(message as StudentUpdateResponse)) as StudentUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentUpdateResponse create() => StudentUpdateResponse._();
  StudentUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<StudentUpdateResponse> createRepeated() => $pb.PbList<StudentUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentUpdateResponse>(create);
  static StudentUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  Gender get gender => $_getN(4);
  @$pb.TagNumber(5)
  set gender(Gender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get updateId => $_getSZ(5);
  @$pb.TagNumber(6)
  set updateId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Timestamp get updateTime => $_getN(6);
  @$pb.TagNumber(7)
  set updateTime($2.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateTime() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureUpdateTime() => $_ensure(6);
}

class StudentDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..hasRequiredFields = false
  ;

  StudentDeleteRequest._() : super();
  factory StudentDeleteRequest({
    $core.String? schoolId,
    $core.String? studentId,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    return _result;
  }
  factory StudentDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentDeleteRequest clone() => StudentDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentDeleteRequest copyWith(void Function(StudentDeleteRequest) updates) => super.copyWith((message) => updates(message as StudentDeleteRequest)) as StudentDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentDeleteRequest create() => StudentDeleteRequest._();
  StudentDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<StudentDeleteRequest> createRepeated() => $pb.PbList<StudentDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static StudentDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentDeleteRequest>(create);
  static StudentDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);
}

class StudentDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StudentDeleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.students_information.student.stubs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schoolId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'studentId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteId')
    ..aOM<$2.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteTime', subBuilder: $2.Timestamp.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedCount', protoName: 'deletedCount')
    ..hasRequiredFields = false
  ;

  StudentDeleteResponse._() : super();
  factory StudentDeleteResponse({
    $core.String? schoolId,
    $core.String? studentId,
    $core.String? deleteId,
    $2.Timestamp? deleteTime,
    $fixnum.Int64? deletedCount,
  }) {
    final _result = create();
    if (schoolId != null) {
      _result.schoolId = schoolId;
    }
    if (studentId != null) {
      _result.studentId = studentId;
    }
    if (deleteId != null) {
      _result.deleteId = deleteId;
    }
    if (deleteTime != null) {
      _result.deleteTime = deleteTime;
    }
    if (deletedCount != null) {
      _result.deletedCount = deletedCount;
    }
    return _result;
  }
  factory StudentDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudentDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudentDeleteResponse clone() => StudentDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudentDeleteResponse copyWith(void Function(StudentDeleteResponse) updates) => super.copyWith((message) => updates(message as StudentDeleteResponse)) as StudentDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudentDeleteResponse create() => StudentDeleteResponse._();
  StudentDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<StudentDeleteResponse> createRepeated() => $pb.PbList<StudentDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudentDeleteResponse>(create);
  static StudentDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deleteId => $_getSZ(2);
  @$pb.TagNumber(3)
  set deleteId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeleteId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteId() => clearField(3);

  @$pb.TagNumber(4)
  $2.Timestamp get deleteTime => $_getN(3);
  @$pb.TagNumber(4)
  set deleteTime($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeleteTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteTime() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureDeleteTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get deletedCount => $_getI64(4);
  @$pb.TagNumber(5)
  set deletedCount($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeletedCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeletedCount() => clearField(5);
}

