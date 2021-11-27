import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:openidconnect/openidconnect.dart';
import '../grpc_stub/student.pbgrpc.dart';

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
    // final clientChannel = GrpcOrGrpcWebClientChannel.toSeparateEndpoints(
    //     grpcHost: 'localhost',
    //     grpcPort: 9200,
    //     grpcTransportSecure: true,
    //     grpcWebHost: 'localhost',
    //     grpcWebPort: 9280,
    //     grpcWebTransportSecure: true);
    final clientChannel = GrpcOrGrpcWebClientChannel.toSeparatePorts(
        grpcPort: 9200,
        grpcTransportSecure: true,
        grpcWebPort: 9280,
        grpcWebTransportSecure: false,
        host: 'localhost');
    // final channelOptions = await _createChannelOptions();
    // final clientChannel = GrpcOrGrpcWebClientChannel.grpc('localhost',
    //    port: 9280, options: channelOptions);

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

  Future<ChannelOptions> _createChannelOptions() async {
    final channelCredentials = await _createChannelCredentials();
    return ChannelOptions(credentials: channelCredentials);
  }

  Future<ChannelCredentials> _createChannelCredentials() async {
    final certUint8List = await _readCertificates();
    return ChannelCredentials.secure(
        certificates: certUint8List, authority: 'auth.figker.com');
  }

  Future<List<int>> _readCertificates() async {
    const _certPath = 'assets/certs/ca.pem';
    final certByteData = await rootBundle.load(_certPath);
    final certUint8List = certByteData.buffer
        .asUint8List(certByteData.offsetInBytes, certByteData.lengthInBytes);
    return certUint8List.cast<int>();
  }

  void hello() {
    print('hello 1');
    getClient();
    print('hello 99');
    return;
  }
}
