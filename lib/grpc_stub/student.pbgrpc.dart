///
//  Generated code. Do not modify.
//  source: student.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'student.pb.dart' as $1;
export 'student.pb.dart';

class StudentServiceClient extends $grpc.Client {
  static final _$getInfo =
      $grpc.ClientMethod<$1.StudentInfoRequest, $1.StudentInfoResponse>(
          '/com.students_information.student.stubs.StudentService/getInfo',
          ($1.StudentInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StudentInfoResponse.fromBuffer(value));
  static final _$listAllInfo = $grpc.ClientMethod<$1.StudentInfoListAllRequest,
          $1.StudentInfoListResponse>(
      '/com.students_information.student.stubs.StudentService/listAllInfo',
      ($1.StudentInfoListAllRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.StudentInfoListResponse.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$1.StudentCreateRequest, $1.StudentCreateResponse>(
          '/com.students_information.student.stubs.StudentService/create',
          ($1.StudentCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StudentCreateResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$1.StudentReadRequest, $1.StudentReadResponse>(
          '/com.students_information.student.stubs.StudentService/read',
          ($1.StudentReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StudentReadResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$1.StudentUpdateRequest, $1.StudentUpdateResponse>(
          '/com.students_information.student.stubs.StudentService/update',
          ($1.StudentUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StudentUpdateResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$1.StudentDeleteRequest, $1.StudentDeleteResponse>(
          '/com.students_information.student.stubs.StudentService/delete',
          ($1.StudentDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StudentDeleteResponse.fromBuffer(value));
  static final _$listAll =
      $grpc.ClientMethod<$1.StudentListAllRequest, $1.StudentListResponse>(
          '/com.students_information.student.stubs.StudentService/listAll',
          ($1.StudentListAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StudentListResponse.fromBuffer(value));

  StudentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.StudentInfoResponse> getInfo(
      $1.StudentInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.StudentInfoListResponse> listAllInfo(
      $1.StudentInfoListAllRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAllInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.StudentCreateResponse> create(
      $1.StudentCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.StudentReadResponse> read(
      $1.StudentReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$1.StudentUpdateResponse> update(
      $1.StudentUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.StudentDeleteResponse> delete(
      $1.StudentDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$1.StudentListResponse> listAll(
      $1.StudentListAllRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAll, request, options: options);
  }
}

abstract class StudentServiceBase extends $grpc.Service {
  $core.String get $name =>
      'com.students_information.student.stubs.StudentService';

  StudentServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.StudentInfoRequest, $1.StudentInfoResponse>(
            'getInfo',
            getInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StudentInfoRequest.fromBuffer(value),
            ($1.StudentInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StudentInfoListAllRequest,
            $1.StudentInfoListResponse>(
        'listAllInfo',
        listAllInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.StudentInfoListAllRequest.fromBuffer(value),
        ($1.StudentInfoListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StudentCreateRequest, $1.StudentCreateResponse>(
            'create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StudentCreateRequest.fromBuffer(value),
            ($1.StudentCreateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StudentReadRequest, $1.StudentReadResponse>(
            'read',
            read_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StudentReadRequest.fromBuffer(value),
            ($1.StudentReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StudentUpdateRequest, $1.StudentUpdateResponse>(
            'update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StudentUpdateRequest.fromBuffer(value),
            ($1.StudentUpdateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StudentDeleteRequest, $1.StudentDeleteResponse>(
            'delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StudentDeleteRequest.fromBuffer(value),
            ($1.StudentDeleteResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StudentListAllRequest, $1.StudentListResponse>(
            'listAll',
            listAll_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StudentListAllRequest.fromBuffer(value),
            ($1.StudentListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.StudentInfoResponse> getInfo_Pre($grpc.ServiceCall call,
      $async.Future<$1.StudentInfoRequest> request) async {
    return getInfo(call, await request);
  }

  $async.Future<$1.StudentInfoListResponse> listAllInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.StudentInfoListAllRequest> request) async {
    return listAllInfo(call, await request);
  }

  $async.Future<$1.StudentCreateResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.StudentCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.StudentReadResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$1.StudentReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$1.StudentUpdateResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$1.StudentUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.StudentDeleteResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$1.StudentDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.StudentListResponse> listAll_Pre($grpc.ServiceCall call,
      $async.Future<$1.StudentListAllRequest> request) async {
    return listAll(call, await request);
  }

  $async.Future<$1.StudentInfoResponse> getInfo(
      $grpc.ServiceCall call, $1.StudentInfoRequest request);
  $async.Future<$1.StudentInfoListResponse> listAllInfo(
      $grpc.ServiceCall call, $1.StudentInfoListAllRequest request);
  $async.Future<$1.StudentCreateResponse> create(
      $grpc.ServiceCall call, $1.StudentCreateRequest request);
  $async.Future<$1.StudentReadResponse> read(
      $grpc.ServiceCall call, $1.StudentReadRequest request);
  $async.Future<$1.StudentUpdateResponse> update(
      $grpc.ServiceCall call, $1.StudentUpdateRequest request);
  $async.Future<$1.StudentDeleteResponse> delete(
      $grpc.ServiceCall call, $1.StudentDeleteRequest request);
  $async.Future<$1.StudentListResponse> listAll(
      $grpc.ServiceCall call, $1.StudentListAllRequest request);
}
