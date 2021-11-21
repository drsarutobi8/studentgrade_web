///
//  Generated code. Do not modify.
//  source: result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;

import 'result.pbenum.dart';

export 'result.pbenum.dart';

class ResultCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultCreateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..e<Grade>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maths',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'art',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'chemistry',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..hasRequiredFields = false;

  ResultCreateRequest._() : super();
  factory ResultCreateRequest({
    $core.String? schoolId,
    $core.String? studentId,
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
  factory ResultCreateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultCreateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultCreateRequest clone() => ResultCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultCreateRequest copyWith(void Function(ResultCreateRequest) updates) =>
      super.copyWith((message) => updates(message as ResultCreateRequest))
          as ResultCreateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultCreateRequest create() => ResultCreateRequest._();
  ResultCreateRequest createEmptyInstance() => create();
  static $pb.PbList<ResultCreateRequest> createRepeated() =>
      $pb.PbList<ResultCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static ResultCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultCreateRequest>(create);
  static ResultCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  Grade get maths => $_getN(2);
  @$pb.TagNumber(3)
  set maths(Grade v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaths() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaths() => clearField(3);

  @$pb.TagNumber(4)
  Grade get art => $_getN(3);
  @$pb.TagNumber(4)
  set art(Grade v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasArt() => $_has(3);
  @$pb.TagNumber(4)
  void clearArt() => clearField(4);

  @$pb.TagNumber(5)
  Grade get chemistry => $_getN(4);
  @$pb.TagNumber(5)
  set chemistry(Grade v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChemistry() => $_has(4);
  @$pb.TagNumber(5)
  void clearChemistry() => clearField(5);
}

class ResultCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultCreateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..e<Grade>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maths',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'art',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'chemistry',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createId')
    ..aOM<$2.Timestamp>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createTime',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  ResultCreateResponse._() : super();
  factory ResultCreateResponse({
    $core.String? schoolId,
    $core.String? studentId,
    Grade? maths,
    Grade? art,
    Grade? chemistry,
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
    if (maths != null) {
      _result.maths = maths;
    }
    if (art != null) {
      _result.art = art;
    }
    if (chemistry != null) {
      _result.chemistry = chemistry;
    }
    if (createId != null) {
      _result.createId = createId;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    return _result;
  }
  factory ResultCreateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultCreateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultCreateResponse clone() =>
      ResultCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultCreateResponse copyWith(void Function(ResultCreateResponse) updates) =>
      super.copyWith((message) => updates(message as ResultCreateResponse))
          as ResultCreateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultCreateResponse create() => ResultCreateResponse._();
  ResultCreateResponse createEmptyInstance() => create();
  static $pb.PbList<ResultCreateResponse> createRepeated() =>
      $pb.PbList<ResultCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultCreateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultCreateResponse>(create);
  static ResultCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  Grade get maths => $_getN(2);
  @$pb.TagNumber(3)
  set maths(Grade v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaths() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaths() => clearField(3);

  @$pb.TagNumber(4)
  Grade get art => $_getN(3);
  @$pb.TagNumber(4)
  set art(Grade v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasArt() => $_has(3);
  @$pb.TagNumber(4)
  void clearArt() => clearField(4);

  @$pb.TagNumber(5)
  Grade get chemistry => $_getN(4);
  @$pb.TagNumber(5)
  set chemistry(Grade v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChemistry() => $_has(4);
  @$pb.TagNumber(5)
  void clearChemistry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get createId => $_getSZ(5);
  @$pb.TagNumber(6)
  set createId($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Timestamp get createTime => $_getN(6);
  @$pb.TagNumber(7)
  set createTime($2.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateTime() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureCreateTime() => $_ensure(6);
}

class ResultReadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultReadRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..hasRequiredFields = false;

  ResultReadRequest._() : super();
  factory ResultReadRequest({
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
  factory ResultReadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultReadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultReadRequest clone() => ResultReadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultReadRequest copyWith(void Function(ResultReadRequest) updates) =>
      super.copyWith((message) => updates(message as ResultReadRequest))
          as ResultReadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultReadRequest create() => ResultReadRequest._();
  ResultReadRequest createEmptyInstance() => create();
  static $pb.PbList<ResultReadRequest> createRepeated() =>
      $pb.PbList<ResultReadRequest>();
  @$core.pragma('dart2js:noInline')
  static ResultReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultReadRequest>(create);
  static ResultReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);
}

class ResultReadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultReadResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..e<Grade>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maths',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'art',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'chemistry',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createId')
    ..aOM<$2.Timestamp>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createTime',
        subBuilder: $2.Timestamp.create)
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateId')
    ..aOM<$2.Timestamp>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateTime',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  ResultReadResponse._() : super();
  factory ResultReadResponse({
    $core.String? schoolId,
    $core.String? studentId,
    Grade? maths,
    Grade? art,
    Grade? chemistry,
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
    if (maths != null) {
      _result.maths = maths;
    }
    if (art != null) {
      _result.art = art;
    }
    if (chemistry != null) {
      _result.chemistry = chemistry;
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
  factory ResultReadResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultReadResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultReadResponse clone() => ResultReadResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultReadResponse copyWith(void Function(ResultReadResponse) updates) =>
      super.copyWith((message) => updates(message as ResultReadResponse))
          as ResultReadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultReadResponse create() => ResultReadResponse._();
  ResultReadResponse createEmptyInstance() => create();
  static $pb.PbList<ResultReadResponse> createRepeated() =>
      $pb.PbList<ResultReadResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultReadResponse>(create);
  static ResultReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  Grade get maths => $_getN(2);
  @$pb.TagNumber(3)
  set maths(Grade v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaths() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaths() => clearField(3);

  @$pb.TagNumber(4)
  Grade get art => $_getN(3);
  @$pb.TagNumber(4)
  set art(Grade v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasArt() => $_has(3);
  @$pb.TagNumber(4)
  void clearArt() => clearField(4);

  @$pb.TagNumber(5)
  Grade get chemistry => $_getN(4);
  @$pb.TagNumber(5)
  set chemistry(Grade v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChemistry() => $_has(4);
  @$pb.TagNumber(5)
  void clearChemistry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get createId => $_getSZ(5);
  @$pb.TagNumber(6)
  set createId($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Timestamp get createTime => $_getN(6);
  @$pb.TagNumber(7)
  set createTime($2.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateTime() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureCreateTime() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get updateId => $_getSZ(7);
  @$pb.TagNumber(8)
  set updateId($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasUpdateId() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdateId() => clearField(8);

  @$pb.TagNumber(9)
  $2.Timestamp get updateTime => $_getN(8);
  @$pb.TagNumber(9)
  set updateTime($2.Timestamp v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasUpdateTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateTime() => clearField(9);
  @$pb.TagNumber(9)
  $2.Timestamp ensureUpdateTime() => $_ensure(8);
}

class ResultListAllRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultListAllRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ResultListAllRequest._() : super();
  factory ResultListAllRequest() => create();
  factory ResultListAllRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultListAllRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultListAllRequest clone() =>
      ResultListAllRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultListAllRequest copyWith(void Function(ResultListAllRequest) updates) =>
      super.copyWith((message) => updates(message as ResultListAllRequest))
          as ResultListAllRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultListAllRequest create() => ResultListAllRequest._();
  ResultListAllRequest createEmptyInstance() => create();
  static $pb.PbList<ResultListAllRequest> createRepeated() =>
      $pb.PbList<ResultListAllRequest>();
  @$core.pragma('dart2js:noInline')
  static ResultListAllRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultListAllRequest>(create);
  static ResultListAllRequest? _defaultInstance;
}

class ResultListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultListResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..pc<ResultReadResponse>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'results',
        $pb.PbFieldType.PM,
        subBuilder: ResultReadResponse.create)
    ..hasRequiredFields = false;

  ResultListResponse._() : super();
  factory ResultListResponse({
    $core.Iterable<ResultReadResponse>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory ResultListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultListResponse clone() => ResultListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultListResponse copyWith(void Function(ResultListResponse) updates) =>
      super.copyWith((message) => updates(message as ResultListResponse))
          as ResultListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultListResponse create() => ResultListResponse._();
  ResultListResponse createEmptyInstance() => create();
  static $pb.PbList<ResultListResponse> createRepeated() =>
      $pb.PbList<ResultListResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultListResponse>(create);
  static ResultListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResultReadResponse> get results => $_getList(0);
}

class ResultUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultUpdateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..e<Grade>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maths',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'art',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'chemistry',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..hasRequiredFields = false;

  ResultUpdateRequest._() : super();
  factory ResultUpdateRequest({
    $core.String? schoolId,
    $core.String? studentId,
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
  factory ResultUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultUpdateRequest clone() => ResultUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultUpdateRequest copyWith(void Function(ResultUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as ResultUpdateRequest))
          as ResultUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultUpdateRequest create() => ResultUpdateRequest._();
  ResultUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ResultUpdateRequest> createRepeated() =>
      $pb.PbList<ResultUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static ResultUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultUpdateRequest>(create);
  static ResultUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  Grade get maths => $_getN(2);
  @$pb.TagNumber(3)
  set maths(Grade v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaths() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaths() => clearField(3);

  @$pb.TagNumber(4)
  Grade get art => $_getN(3);
  @$pb.TagNumber(4)
  set art(Grade v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasArt() => $_has(3);
  @$pb.TagNumber(4)
  void clearArt() => clearField(4);

  @$pb.TagNumber(5)
  Grade get chemistry => $_getN(4);
  @$pb.TagNumber(5)
  set chemistry(Grade v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChemistry() => $_has(4);
  @$pb.TagNumber(5)
  void clearChemistry() => clearField(5);
}

class ResultUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultUpdateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..e<Grade>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maths',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'art',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..e<Grade>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'chemistry',
        $pb.PbFieldType.OE,
        defaultOrMaker: Grade.PASS,
        valueOf: Grade.valueOf,
        enumValues: Grade.values)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateId')
    ..aOM<$2.Timestamp>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateTime',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  ResultUpdateResponse._() : super();
  factory ResultUpdateResponse({
    $core.String? schoolId,
    $core.String? studentId,
    Grade? maths,
    Grade? art,
    Grade? chemistry,
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
    if (maths != null) {
      _result.maths = maths;
    }
    if (art != null) {
      _result.art = art;
    }
    if (chemistry != null) {
      _result.chemistry = chemistry;
    }
    if (updateId != null) {
      _result.updateId = updateId;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    return _result;
  }
  factory ResultUpdateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultUpdateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultUpdateResponse clone() =>
      ResultUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultUpdateResponse copyWith(void Function(ResultUpdateResponse) updates) =>
      super.copyWith((message) => updates(message as ResultUpdateResponse))
          as ResultUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultUpdateResponse create() => ResultUpdateResponse._();
  ResultUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<ResultUpdateResponse> createRepeated() =>
      $pb.PbList<ResultUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultUpdateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultUpdateResponse>(create);
  static ResultUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  Grade get maths => $_getN(2);
  @$pb.TagNumber(3)
  set maths(Grade v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaths() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaths() => clearField(3);

  @$pb.TagNumber(4)
  Grade get art => $_getN(3);
  @$pb.TagNumber(4)
  set art(Grade v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasArt() => $_has(3);
  @$pb.TagNumber(4)
  void clearArt() => clearField(4);

  @$pb.TagNumber(5)
  Grade get chemistry => $_getN(4);
  @$pb.TagNumber(5)
  set chemistry(Grade v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChemistry() => $_has(4);
  @$pb.TagNumber(5)
  void clearChemistry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get updateId => $_getSZ(5);
  @$pb.TagNumber(6)
  set updateId($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdateId() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Timestamp get updateTime => $_getN(6);
  @$pb.TagNumber(7)
  set updateTime($2.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUpdateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateTime() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureUpdateTime() => $_ensure(6);
}

class ResultDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultDeleteRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..hasRequiredFields = false;

  ResultDeleteRequest._() : super();
  factory ResultDeleteRequest({
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
  factory ResultDeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultDeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultDeleteRequest clone() => ResultDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultDeleteRequest copyWith(void Function(ResultDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as ResultDeleteRequest))
          as ResultDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultDeleteRequest create() => ResultDeleteRequest._();
  ResultDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<ResultDeleteRequest> createRepeated() =>
      $pb.PbList<ResultDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static ResultDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultDeleteRequest>(create);
  static ResultDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);
}

class ResultDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResultDeleteResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'com.students_information.result.stubs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schoolId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'studentId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deleteId')
    ..aOM<$2.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deleteTime',
        subBuilder: $2.Timestamp.create)
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deletedCount',
        protoName: 'deletedCount')
    ..hasRequiredFields = false;

  ResultDeleteResponse._() : super();
  factory ResultDeleteResponse({
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
  factory ResultDeleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultDeleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultDeleteResponse clone() =>
      ResultDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultDeleteResponse copyWith(void Function(ResultDeleteResponse) updates) =>
      super.copyWith((message) => updates(message as ResultDeleteResponse))
          as ResultDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultDeleteResponse create() => ResultDeleteResponse._();
  ResultDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<ResultDeleteResponse> createRepeated() =>
      $pb.PbList<ResultDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultDeleteResponse>(create);
  static ResultDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schoolId => $_getSZ(0);
  @$pb.TagNumber(1)
  set schoolId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchoolId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchoolId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set studentId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStudentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deleteId => $_getSZ(2);
  @$pb.TagNumber(3)
  set deleteId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDeleteId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteId() => clearField(3);

  @$pb.TagNumber(4)
  $2.Timestamp get deleteTime => $_getN(3);
  @$pb.TagNumber(4)
  set deleteTime($2.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeleteTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteTime() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureDeleteTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get deletedCount => $_getI64(4);
  @$pb.TagNumber(5)
  set deletedCount($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDeletedCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeletedCount() => clearField(5);
}
