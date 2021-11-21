///
//  Generated code. Do not modify.
//  source: student.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gradeDescriptor instead')
const Grade$json = const {
  '1': 'Grade',
  '2': const [
    const {'1': 'PASS', '2': 0},
    const {'1': 'FAIL', '2': 1},
    const {'1': 'UNKNOWN', '2': 2},
  ],
};

/// Descriptor for `Grade`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gradeDescriptor = $convert.base64Decode('CgVHcmFkZRIICgRQQVNTEAASCAoERkFJTBABEgsKB1VOS05PV04QAg==');
@$core.Deprecated('Use genderDescriptor instead')
const Gender$json = const {
  '1': 'Gender',
  '2': const [
    const {'1': 'MALE', '2': 0},
    const {'1': 'FEMALE', '2': 1},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert.base64Decode('CgZHZW5kZXISCAoETUFMRRAAEgoKBkZFTUFMRRAB');
@$core.Deprecated('Use studentInfoRequestDescriptor instead')
const StudentInfoRequest$json = const {
  '1': 'StudentInfoRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `StudentInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentInfoRequestDescriptor = $convert.base64Decode('ChJTdHVkZW50SW5mb1JlcXVlc3QSGwoJc2Nob29sX2lkGAEgASgJUghzY2hvb2xJZBIdCgpzdHVkZW50X2lkGAIgASgJUglzdHVkZW50SWQ=');
@$core.Deprecated('Use studentInfoResponseDescriptor instead')
const StudentInfoResponse$json = const {
  '1': 'StudentInfoResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Gender', '10': 'gender'},
    const {'1': 'maths', '3': 6, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Grade', '10': 'maths'},
    const {'1': 'art', '3': 7, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Grade', '10': 'art'},
    const {'1': 'chemistry', '3': 8, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Grade', '10': 'chemistry'},
  ],
};

/// Descriptor for `StudentInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentInfoResponseDescriptor = $convert.base64Decode('ChNTdHVkZW50SW5mb1Jlc3BvbnNlEhsKCXNjaG9vbF9pZBgBIAEoCVIIc2Nob29sSWQSHQoKc3R1ZGVudF9pZBgCIAEoCVIJc3R1ZGVudElkEhIKBG5hbWUYAyABKAlSBG5hbWUSEAoDYWdlGAQgASgFUgNhZ2USRgoGZ2VuZGVyGAUgASgOMi4uY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnN0dWRlbnQuc3R1YnMuR2VuZGVyUgZnZW5kZXISQwoFbWF0aHMYBiABKA4yLS5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24uc3R1ZGVudC5zdHVicy5HcmFkZVIFbWF0aHMSPwoDYXJ0GAcgASgOMi0uY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnN0dWRlbnQuc3R1YnMuR3JhZGVSA2FydBJLCgljaGVtaXN0cnkYCCABKA4yLS5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24uc3R1ZGVudC5zdHVicy5HcmFkZVIJY2hlbWlzdHJ5');
@$core.Deprecated('Use studentInfoListAllRequestDescriptor instead')
const StudentInfoListAllRequest$json = const {
  '1': 'StudentInfoListAllRequest',
};

/// Descriptor for `StudentInfoListAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentInfoListAllRequestDescriptor = $convert.base64Decode('ChlTdHVkZW50SW5mb0xpc3RBbGxSZXF1ZXN0');
@$core.Deprecated('Use studentInfoListResponseDescriptor instead')
const StudentInfoListResponse$json = const {
  '1': 'StudentInfoListResponse',
  '2': const [
    const {'1': 'studentsInfo', '3': 1, '4': 3, '5': 11, '6': '.com.students_information.student.stubs.StudentInfoResponse', '10': 'studentsInfo'},
  ],
};

/// Descriptor for `StudentInfoListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentInfoListResponseDescriptor = $convert.base64Decode('ChdTdHVkZW50SW5mb0xpc3RSZXNwb25zZRJfCgxzdHVkZW50c0luZm8YASADKAsyOy5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24uc3R1ZGVudC5zdHVicy5TdHVkZW50SW5mb1Jlc3BvbnNlUgxzdHVkZW50c0luZm8=');
@$core.Deprecated('Use studentCreateRequestDescriptor instead')
const StudentCreateRequest$json = const {
  '1': 'StudentCreateRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Gender', '10': 'gender'},
  ],
};

/// Descriptor for `StudentCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentCreateRequestDescriptor = $convert.base64Decode('ChRTdHVkZW50Q3JlYXRlUmVxdWVzdBIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZBISCgRuYW1lGAMgASgJUgRuYW1lEhAKA2FnZRgEIAEoBVIDYWdlEkYKBmdlbmRlchgFIAEoDjIuLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5zdHVkZW50LnN0dWJzLkdlbmRlclIGZ2VuZGVy');
@$core.Deprecated('Use studentCreateResponseDescriptor instead')
const StudentCreateResponse$json = const {
  '1': 'StudentCreateResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Gender', '10': 'gender'},
    const {'1': 'create_id', '3': 6, '4': 1, '5': 9, '10': 'createId'},
    const {'1': 'create_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
  ],
};

/// Descriptor for `StudentCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentCreateResponseDescriptor = $convert.base64Decode('ChVTdHVkZW50Q3JlYXRlUmVzcG9uc2USGwoJc2Nob29sX2lkGAEgASgJUghzY2hvb2xJZBIdCgpzdHVkZW50X2lkGAIgASgJUglzdHVkZW50SWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIQCgNhZ2UYBCABKAVSA2FnZRJGCgZnZW5kZXIYBSABKA4yLi5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24uc3R1ZGVudC5zdHVicy5HZW5kZXJSBmdlbmRlchIbCgljcmVhdGVfaWQYBiABKAlSCGNyZWF0ZUlkEjsKC2NyZWF0ZV90aW1lGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKY3JlYXRlVGltZQ==');
@$core.Deprecated('Use studentReadRequestDescriptor instead')
const StudentReadRequest$json = const {
  '1': 'StudentReadRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `StudentReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentReadRequestDescriptor = $convert.base64Decode('ChJTdHVkZW50UmVhZFJlcXVlc3QSGwoJc2Nob29sX2lkGAEgASgJUghzY2hvb2xJZBIdCgpzdHVkZW50X2lkGAIgASgJUglzdHVkZW50SWQ=');
@$core.Deprecated('Use studentReadResponseDescriptor instead')
const StudentReadResponse$json = const {
  '1': 'StudentReadResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Gender', '10': 'gender'},
    const {'1': 'create_id', '3': 6, '4': 1, '5': 9, '10': 'createId'},
    const {'1': 'create_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_id', '3': 8, '4': 1, '5': 9, '10': 'updateId'},
    const {'1': 'update_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

/// Descriptor for `StudentReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentReadResponseDescriptor = $convert.base64Decode('ChNTdHVkZW50UmVhZFJlc3BvbnNlEhsKCXNjaG9vbF9pZBgBIAEoCVIIc2Nob29sSWQSHQoKc3R1ZGVudF9pZBgCIAEoCVIJc3R1ZGVudElkEhIKBG5hbWUYAyABKAlSBG5hbWUSEAoDYWdlGAQgASgFUgNhZ2USRgoGZ2VuZGVyGAUgASgOMi4uY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnN0dWRlbnQuc3R1YnMuR2VuZGVyUgZnZW5kZXISGwoJY3JlYXRlX2lkGAYgASgJUghjcmVhdGVJZBI7CgtjcmVhdGVfdGltZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmNyZWF0ZVRpbWUSGwoJdXBkYXRlX2lkGAggASgJUgh1cGRhdGVJZBI7Cgt1cGRhdGVfdGltZRgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnVwZGF0ZVRpbWU=');
@$core.Deprecated('Use studentListAllRequestDescriptor instead')
const StudentListAllRequest$json = const {
  '1': 'StudentListAllRequest',
};

/// Descriptor for `StudentListAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentListAllRequestDescriptor = $convert.base64Decode('ChVTdHVkZW50TGlzdEFsbFJlcXVlc3Q=');
@$core.Deprecated('Use studentListResponseDescriptor instead')
const StudentListResponse$json = const {
  '1': 'StudentListResponse',
  '2': const [
    const {'1': 'students', '3': 1, '4': 3, '5': 11, '6': '.com.students_information.student.stubs.StudentReadResponse', '10': 'students'},
  ],
};

/// Descriptor for `StudentListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentListResponseDescriptor = $convert.base64Decode('ChNTdHVkZW50TGlzdFJlc3BvbnNlElcKCHN0dWRlbnRzGAEgAygLMjsuY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnN0dWRlbnQuc3R1YnMuU3R1ZGVudFJlYWRSZXNwb25zZVIIc3R1ZGVudHM=');
@$core.Deprecated('Use studentUpdateRequestDescriptor instead')
const StudentUpdateRequest$json = const {
  '1': 'StudentUpdateRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Gender', '10': 'gender'},
  ],
};

/// Descriptor for `StudentUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentUpdateRequestDescriptor = $convert.base64Decode('ChRTdHVkZW50VXBkYXRlUmVxdWVzdBIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZBISCgRuYW1lGAMgASgJUgRuYW1lEhAKA2FnZRgEIAEoBVIDYWdlEkYKBmdlbmRlchgFIAEoDjIuLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5zdHVkZW50LnN0dWJzLkdlbmRlclIGZ2VuZGVy');
@$core.Deprecated('Use studentUpdateResponseDescriptor instead')
const StudentUpdateResponse$json = const {
  '1': 'StudentUpdateResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.student.stubs.Gender', '10': 'gender'},
    const {'1': 'update_id', '3': 6, '4': 1, '5': 9, '10': 'updateId'},
    const {'1': 'update_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

/// Descriptor for `StudentUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentUpdateResponseDescriptor = $convert.base64Decode('ChVTdHVkZW50VXBkYXRlUmVzcG9uc2USGwoJc2Nob29sX2lkGAEgASgJUghzY2hvb2xJZBIdCgpzdHVkZW50X2lkGAIgASgJUglzdHVkZW50SWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIQCgNhZ2UYBCABKAVSA2FnZRJGCgZnZW5kZXIYBSABKA4yLi5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24uc3R1ZGVudC5zdHVicy5HZW5kZXJSBmdlbmRlchIbCgl1cGRhdGVfaWQYBiABKAlSCHVwZGF0ZUlkEjsKC3VwZGF0ZV90aW1lGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKdXBkYXRlVGltZQ==');
@$core.Deprecated('Use studentDeleteRequestDescriptor instead')
const StudentDeleteRequest$json = const {
  '1': 'StudentDeleteRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `StudentDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentDeleteRequestDescriptor = $convert.base64Decode('ChRTdHVkZW50RGVsZXRlUmVxdWVzdBIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZA==');
@$core.Deprecated('Use studentDeleteResponseDescriptor instead')
const StudentDeleteResponse$json = const {
  '1': 'StudentDeleteResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'delete_id', '3': 3, '4': 1, '5': 9, '10': 'deleteId'},
    const {'1': 'delete_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'deleteTime'},
    const {'1': 'deletedCount', '3': 5, '4': 1, '5': 3, '10': 'deletedCount'},
  ],
};

/// Descriptor for `StudentDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentDeleteResponseDescriptor = $convert.base64Decode('ChVTdHVkZW50RGVsZXRlUmVzcG9uc2USGwoJc2Nob29sX2lkGAEgASgJUghzY2hvb2xJZBIdCgpzdHVkZW50X2lkGAIgASgJUglzdHVkZW50SWQSGwoJZGVsZXRlX2lkGAMgASgJUghkZWxldGVJZBI7CgtkZWxldGVfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmRlbGV0ZVRpbWUSIgoMZGVsZXRlZENvdW50GAUgASgDUgxkZWxldGVkQ291bnQ=');
