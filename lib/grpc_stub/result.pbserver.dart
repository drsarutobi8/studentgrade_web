///
//  Generated code. Do not modify.
//  source: result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'result.pb.dart' as $1;
import 'result.pbjson.dart';

export 'result.pb.dart';

abstract class ResultServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ResultCreateResponse> create($pb.ServerContext ctx, $1.ResultCreateRequest request);
  $async.Future<$1.ResultReadResponse> read($pb.ServerContext ctx, $1.ResultReadRequest request);
  $async.Future<$1.ResultUpdateResponse> update($pb.ServerContext ctx, $1.ResultUpdateRequest request);
  $async.Future<$1.ResultDeleteResponse> delete($pb.ServerContext ctx, $1.ResultDeleteRequest request);
  $async.Future<$1.ResultListResponse> listAll($pb.ServerContext ctx, $1.ResultListAllRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'create': return $1.ResultCreateRequest();
      case 'read': return $1.ResultReadRequest();
      case 'update': return $1.ResultUpdateRequest();
      case 'delete': return $1.ResultDeleteRequest();
      case 'listAll': return $1.ResultListAllRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'create': return this.create(ctx, request as $1.ResultCreateRequest);
      case 'read': return this.read(ctx, request as $1.ResultReadRequest);
      case 'update': return this.update(ctx, request as $1.ResultUpdateRequest);
      case 'delete': return this.delete(ctx, request as $1.ResultDeleteRequest);
      case 'listAll': return this.listAll(ctx, request as $1.ResultListAllRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ResultServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ResultServiceBase$messageJson;
}

