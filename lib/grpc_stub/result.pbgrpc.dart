///
//  Generated code. Do not modify.
//  source: result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'result.pb.dart' as $0;
export 'result.pb.dart';

class ResultServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.ResultCreateRequest, $0.ResultCreateResponse>(
          '/com.students_information.result.stubs.ResultService/create',
          ($0.ResultCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResultCreateResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$0.ResultReadRequest, $0.ResultReadResponse>(
          '/com.students_information.result.stubs.ResultService/read',
          ($0.ResultReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResultReadResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.ResultUpdateRequest, $0.ResultUpdateResponse>(
          '/com.students_information.result.stubs.ResultService/update',
          ($0.ResultUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResultUpdateResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.ResultDeleteRequest, $0.ResultDeleteResponse>(
          '/com.students_information.result.stubs.ResultService/delete',
          ($0.ResultDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResultDeleteResponse.fromBuffer(value));
  static final _$listAll =
      $grpc.ClientMethod<$0.ResultListAllRequest, $0.ResultListResponse>(
          '/com.students_information.result.stubs.ResultService/listAll',
          ($0.ResultListAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResultListResponse.fromBuffer(value));

  ResultServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResultCreateResponse> create(
      $0.ResultCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResultReadResponse> read($0.ResultReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResultUpdateResponse> update(
      $0.ResultUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResultDeleteResponse> delete(
      $0.ResultDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResultListResponse> listAll(
      $0.ResultListAllRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAll, request, options: options);
  }
}

abstract class ResultServiceBase extends $grpc.Service {
  $core.String get $name =>
      'com.students_information.result.stubs.ResultService';

  ResultServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ResultCreateRequest, $0.ResultCreateResponse>(
            'create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResultCreateRequest.fromBuffer(value),
            ($0.ResultCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResultReadRequest, $0.ResultReadResponse>(
        'read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResultReadRequest.fromBuffer(value),
        ($0.ResultReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResultUpdateRequest, $0.ResultUpdateResponse>(
            'update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResultUpdateRequest.fromBuffer(value),
            ($0.ResultUpdateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResultDeleteRequest, $0.ResultDeleteResponse>(
            'delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResultDeleteRequest.fromBuffer(value),
            ($0.ResultDeleteResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResultListAllRequest, $0.ResultListResponse>(
            'listAll',
            listAll_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResultListAllRequest.fromBuffer(value),
            ($0.ResultListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResultCreateResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResultCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ResultReadResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResultReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$0.ResultUpdateResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResultUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ResultDeleteResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResultDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.ResultListResponse> listAll_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResultListAllRequest> request) async {
    return listAll(call, await request);
  }

  $async.Future<$0.ResultCreateResponse> create(
      $grpc.ServiceCall call, $0.ResultCreateRequest request);
  $async.Future<$0.ResultReadResponse> read(
      $grpc.ServiceCall call, $0.ResultReadRequest request);
  $async.Future<$0.ResultUpdateResponse> update(
      $grpc.ServiceCall call, $0.ResultUpdateRequest request);
  $async.Future<$0.ResultDeleteResponse> delete(
      $grpc.ServiceCall call, $0.ResultDeleteRequest request);
  $async.Future<$0.ResultListResponse> listAll(
      $grpc.ServiceCall call, $0.ResultListAllRequest request);
}
