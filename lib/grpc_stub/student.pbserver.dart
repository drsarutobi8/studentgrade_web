///
//  Generated code. Do not modify.
//  source: student.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'student.pb.dart' as $2;
import 'student.pbjson.dart';

export 'student.pb.dart';

abstract class StudentServiceBase extends $pb.GeneratedService {
  $async.Future<$2.StudentInfoResponse> getInfo($pb.ServerContext ctx, $2.StudentInfoRequest request);
  $async.Future<$2.StudentInfoListResponse> listAllInfo($pb.ServerContext ctx, $2.StudentInfoListAllRequest request);
  $async.Future<$2.StudentCreateResponse> create($pb.ServerContext ctx, $2.StudentCreateRequest request);
  $async.Future<$2.StudentReadResponse> read($pb.ServerContext ctx, $2.StudentReadRequest request);
  $async.Future<$2.StudentUpdateResponse> update($pb.ServerContext ctx, $2.StudentUpdateRequest request);
  $async.Future<$2.StudentDeleteResponse> delete($pb.ServerContext ctx, $2.StudentDeleteRequest request);
  $async.Future<$2.StudentListResponse> listAll($pb.ServerContext ctx, $2.StudentListAllRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'getInfo': return $2.StudentInfoRequest();
      case 'listAllInfo': return $2.StudentInfoListAllRequest();
      case 'create': return $2.StudentCreateRequest();
      case 'read': return $2.StudentReadRequest();
      case 'update': return $2.StudentUpdateRequest();
      case 'delete': return $2.StudentDeleteRequest();
      case 'listAll': return $2.StudentListAllRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'getInfo': return this.getInfo(ctx, request as $2.StudentInfoRequest);
      case 'listAllInfo': return this.listAllInfo(ctx, request as $2.StudentInfoListAllRequest);
      case 'create': return this.create(ctx, request as $2.StudentCreateRequest);
      case 'read': return this.read(ctx, request as $2.StudentReadRequest);
      case 'update': return this.update(ctx, request as $2.StudentUpdateRequest);
      case 'delete': return this.delete(ctx, request as $2.StudentDeleteRequest);
      case 'listAll': return this.listAll(ctx, request as $2.StudentListAllRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => StudentServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => StudentServiceBase$messageJson;
}

