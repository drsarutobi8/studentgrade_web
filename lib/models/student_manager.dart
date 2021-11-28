import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:openidconnect/openidconnect.dart';

import '../grpc_stub/student.pbgrpc.dart';
import '../grpc_network/client_channel_stub.dart'
    if (dart.library.js) '../grpc_network/client_channel_web.dart'
    if (dart.library.io) '../grpc_network/client_channel_native.dart';

class StudentManager extends ChangeNotifier {
  StudentServiceClient? _client;
  StudentServiceClient? getClient() {
    if (_client == null) {
      initClient();
    } //if
    print('getClient 99');
    return _client;
  }

  Future<void> initClient() async {
    print('initClient 1');
    final identity = await OpenIdIdentity.load();
    print('initClient 2');
    final callOptions = CallOptions(metadata: {
      'Authorization': 'Bearer ${identity!.accessToken}',
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
    print('initClient 99 initiated=${_client != null}');
    final listAllReq = StudentListAllRequest.create();
    print('listAll 1');
    final listAllResFuture = getClient()!.listAll(listAllReq);
    print('listAll 2');
    listAllResFuture.asStream().forEach((res) => {
          for (final i = res.students.iterator; i.moveNext();)
            {print('${i.current.studentId} = ${i.current.name}')}
        });
    print('initClient 100 initiated=${_client != null}');
  }

  void hello() {
    print('hello 1');
    getClient();
    print('hello 99');
    return;
  }
}
