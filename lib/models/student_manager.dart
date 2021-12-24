import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
//import 'package:openidconnect/openidconnect.dart';

import '../grpc_stub/student.pbgrpc.dart';
import '../grpc_network/client_channel_stub.dart'
    if (dart.library.js) '../grpc_network/client_channel_web.dart'
    if (dart.library.io) '../grpc_network/client_channel_native.dart';

class StudentManager extends ChangeNotifier {
  StudentServiceClient? _client;
  // StudentServiceClient? getClient() {
  //   if (_client == null) {
  //     initClient();
  //   } //if
  //   print('getClient 99');
  //   return _client;
  // }

  Future<void> initClient() async {
    print('initClient 1');

    //TODO #1 Disabled for now
    // final identity = await OpenIdIdentity.load();
    print('initClient 2');
    final callOptions = CallOptions(metadata: {
      //'Authorization': 'Bearer ${identity!.accessToken}',
      'Access-Control-Allow-Origin': '*', // Required for CORS support to work
      'Access-Control-Allow-Credentials':
          'true', // Required for cookies, authorization headers with HTTPS
      'Access-Control-Allow-Headers':
          'Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale',
      'Access-Control-Allow-Methods': '*'
    });
    print('initClient 3');
    final clientChannel = await createClientChannel();
    print('initClient 4');
    _client = StudentServiceClient(clientChannel, options: callOptions);
    print('initClient 100 initiated=${_client != null}');
  }

  Future<StudentListResponse> listAllStudents() async {
    print('listAllStudents 1');
    final listAllReq = StudentListAllRequest.create();
    print('listAllStudents 2');
    if (_client == null) {
      await initClient();
    } //if
    print('listAllStudents 3');

    final listAllResResponseFuture = _client!.listAll(listAllReq);
    print('listAllStudents 4');
    var listAllResFuture = null;
    await listAllResResponseFuture.whenComplete(
        () => listAllResFuture = listAllResResponseFuture.asStream().first);
    print('listAllStudents 99');
    return listAllResFuture;
  }

  Future<StudentDeleteResponse> deleteStudent(
      String schoolId, String studentId) async {
    final deleteReq = StudentDeleteRequest.create()
      ..schoolId = schoolId
      ..studentId = studentId;
    print('deleteStudent 1 schoolId=$schoolId, studentId=$studentId');
    if (_client == null) {
      await initClient();
    } //if
    final deleteResResponseFuture = _client!.delete(deleteReq);
    var deleteResFuture = null;
    await deleteResResponseFuture.whenComplete(
        () => deleteResFuture = deleteResResponseFuture.asStream().first);
    print('deleteStudent 99');
    notifyListeners();
    return deleteResFuture;
  }
}
