///
//  Generated code. Do not modify.
//  source: result.proto
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
@$core.Deprecated('Use resultCreateRequestDescriptor instead')
const ResultCreateRequest$json = const {
  '1': 'ResultCreateRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'maths', '3': 3, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'maths'},
    const {'1': 'art', '3': 4, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'art'},
    const {'1': 'chemistry', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'chemistry'},
  ],
};

/// Descriptor for `ResultCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultCreateRequestDescriptor = $convert.base64Decode('ChNSZXN1bHRDcmVhdGVSZXF1ZXN0EhsKCXNjaG9vbF9pZBgBIAEoCVIIc2Nob29sSWQSHQoKc3R1ZGVudF9pZBgCIAEoCVIJc3R1ZGVudElkEkIKBW1hdGhzGAMgASgOMiwuY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnJlc3VsdC5zdHVicy5HcmFkZVIFbWF0aHMSPgoDYXJ0GAQgASgOMiwuY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnJlc3VsdC5zdHVicy5HcmFkZVIDYXJ0EkoKCWNoZW1pc3RyeRgFIAEoDjIsLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuR3JhZGVSCWNoZW1pc3RyeQ==');
@$core.Deprecated('Use resultCreateResponseDescriptor instead')
const ResultCreateResponse$json = const {
  '1': 'ResultCreateResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'maths', '3': 3, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'maths'},
    const {'1': 'art', '3': 4, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'art'},
    const {'1': 'chemistry', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'chemistry'},
    const {'1': 'create_id', '3': 6, '4': 1, '5': 9, '10': 'createId'},
    const {'1': 'create_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
  ],
};

/// Descriptor for `ResultCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultCreateResponseDescriptor = $convert.base64Decode('ChRSZXN1bHRDcmVhdGVSZXNwb25zZRIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZBJCCgVtYXRocxgDIAEoDjIsLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuR3JhZGVSBW1hdGhzEj4KA2FydBgEIAEoDjIsLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuR3JhZGVSA2FydBJKCgljaGVtaXN0cnkYBSABKA4yLC5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24ucmVzdWx0LnN0dWJzLkdyYWRlUgljaGVtaXN0cnkSGwoJY3JlYXRlX2lkGAYgASgJUghjcmVhdGVJZBI7CgtjcmVhdGVfdGltZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmNyZWF0ZVRpbWU=');
@$core.Deprecated('Use resultReadRequestDescriptor instead')
const ResultReadRequest$json = const {
  '1': 'ResultReadRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `ResultReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultReadRequestDescriptor = $convert.base64Decode('ChFSZXN1bHRSZWFkUmVxdWVzdBIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZA==');
@$core.Deprecated('Use resultReadResponseDescriptor instead')
const ResultReadResponse$json = const {
  '1': 'ResultReadResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'maths', '3': 3, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'maths'},
    const {'1': 'art', '3': 4, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'art'},
    const {'1': 'chemistry', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'chemistry'},
    const {'1': 'create_id', '3': 6, '4': 1, '5': 9, '10': 'createId'},
    const {'1': 'create_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
    const {'1': 'update_id', '3': 8, '4': 1, '5': 9, '10': 'updateId'},
    const {'1': 'update_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

/// Descriptor for `ResultReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultReadResponseDescriptor = $convert.base64Decode('ChJSZXN1bHRSZWFkUmVzcG9uc2USGwoJc2Nob29sX2lkGAEgASgJUghzY2hvb2xJZBIdCgpzdHVkZW50X2lkGAIgASgJUglzdHVkZW50SWQSQgoFbWF0aHMYAyABKA4yLC5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24ucmVzdWx0LnN0dWJzLkdyYWRlUgVtYXRocxI+CgNhcnQYBCABKA4yLC5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24ucmVzdWx0LnN0dWJzLkdyYWRlUgNhcnQSSgoJY2hlbWlzdHJ5GAUgASgOMiwuY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnJlc3VsdC5zdHVicy5HcmFkZVIJY2hlbWlzdHJ5EhsKCWNyZWF0ZV9pZBgGIAEoCVIIY3JlYXRlSWQSOwoLY3JlYXRlX3RpbWUYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgpjcmVhdGVUaW1lEhsKCXVwZGF0ZV9pZBgIIAEoCVIIdXBkYXRlSWQSOwoLdXBkYXRlX3RpbWUYCSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgp1cGRhdGVUaW1l');
@$core.Deprecated('Use resultListAllRequestDescriptor instead')
const ResultListAllRequest$json = const {
  '1': 'ResultListAllRequest',
};

/// Descriptor for `ResultListAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultListAllRequestDescriptor = $convert.base64Decode('ChRSZXN1bHRMaXN0QWxsUmVxdWVzdA==');
@$core.Deprecated('Use resultListResponseDescriptor instead')
const ResultListResponse$json = const {
  '1': 'ResultListResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.com.students_information.result.stubs.ResultReadResponse', '10': 'results'},
  ],
};

/// Descriptor for `ResultListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultListResponseDescriptor = $convert.base64Decode('ChJSZXN1bHRMaXN0UmVzcG9uc2USUwoHcmVzdWx0cxgBIAMoCzI5LmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuUmVzdWx0UmVhZFJlc3BvbnNlUgdyZXN1bHRz');
@$core.Deprecated('Use resultUpdateRequestDescriptor instead')
const ResultUpdateRequest$json = const {
  '1': 'ResultUpdateRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'maths', '3': 3, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'maths'},
    const {'1': 'art', '3': 4, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'art'},
    const {'1': 'chemistry', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'chemistry'},
  ],
};

/// Descriptor for `ResultUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultUpdateRequestDescriptor = $convert.base64Decode('ChNSZXN1bHRVcGRhdGVSZXF1ZXN0EhsKCXNjaG9vbF9pZBgBIAEoCVIIc2Nob29sSWQSHQoKc3R1ZGVudF9pZBgCIAEoCVIJc3R1ZGVudElkEkIKBW1hdGhzGAMgASgOMiwuY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnJlc3VsdC5zdHVicy5HcmFkZVIFbWF0aHMSPgoDYXJ0GAQgASgOMiwuY29tLnN0dWRlbnRzX2luZm9ybWF0aW9uLnJlc3VsdC5zdHVicy5HcmFkZVIDYXJ0EkoKCWNoZW1pc3RyeRgFIAEoDjIsLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuR3JhZGVSCWNoZW1pc3RyeQ==');
@$core.Deprecated('Use resultUpdateResponseDescriptor instead')
const ResultUpdateResponse$json = const {
  '1': 'ResultUpdateResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'maths', '3': 3, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'maths'},
    const {'1': 'art', '3': 4, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'art'},
    const {'1': 'chemistry', '3': 5, '4': 1, '5': 14, '6': '.com.students_information.result.stubs.Grade', '10': 'chemistry'},
    const {'1': 'update_id', '3': 6, '4': 1, '5': 9, '10': 'updateId'},
    const {'1': 'update_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateTime'},
  ],
};

/// Descriptor for `ResultUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultUpdateResponseDescriptor = $convert.base64Decode('ChRSZXN1bHRVcGRhdGVSZXNwb25zZRIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZBJCCgVtYXRocxgDIAEoDjIsLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuR3JhZGVSBW1hdGhzEj4KA2FydBgEIAEoDjIsLmNvbS5zdHVkZW50c19pbmZvcm1hdGlvbi5yZXN1bHQuc3R1YnMuR3JhZGVSA2FydBJKCgljaGVtaXN0cnkYBSABKA4yLC5jb20uc3R1ZGVudHNfaW5mb3JtYXRpb24ucmVzdWx0LnN0dWJzLkdyYWRlUgljaGVtaXN0cnkSGwoJdXBkYXRlX2lkGAYgASgJUgh1cGRhdGVJZBI7Cgt1cGRhdGVfdGltZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnVwZGF0ZVRpbWU=');
@$core.Deprecated('Use resultDeleteRequestDescriptor instead')
const ResultDeleteRequest$json = const {
  '1': 'ResultDeleteRequest',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `ResultDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDeleteRequestDescriptor = $convert.base64Decode('ChNSZXN1bHREZWxldGVSZXF1ZXN0EhsKCXNjaG9vbF9pZBgBIAEoCVIIc2Nob29sSWQSHQoKc3R1ZGVudF9pZBgCIAEoCVIJc3R1ZGVudElk');
@$core.Deprecated('Use resultDeleteResponseDescriptor instead')
const ResultDeleteResponse$json = const {
  '1': 'ResultDeleteResponse',
  '2': const [
    const {'1': 'school_id', '3': 1, '4': 1, '5': 9, '10': 'schoolId'},
    const {'1': 'student_id', '3': 2, '4': 1, '5': 9, '10': 'studentId'},
    const {'1': 'delete_id', '3': 3, '4': 1, '5': 9, '10': 'deleteId'},
    const {'1': 'delete_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'deleteTime'},
    const {'1': 'deletedCount', '3': 5, '4': 1, '5': 3, '10': 'deletedCount'},
  ],
};

/// Descriptor for `ResultDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDeleteResponseDescriptor = $convert.base64Decode('ChRSZXN1bHREZWxldGVSZXNwb25zZRIbCglzY2hvb2xfaWQYASABKAlSCHNjaG9vbElkEh0KCnN0dWRlbnRfaWQYAiABKAlSCXN0dWRlbnRJZBIbCglkZWxldGVfaWQYAyABKAlSCGRlbGV0ZUlkEjsKC2RlbGV0ZV90aW1lGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKZGVsZXRlVGltZRIiCgxkZWxldGVkQ291bnQYBSABKANSDGRlbGV0ZWRDb3VudA==');
