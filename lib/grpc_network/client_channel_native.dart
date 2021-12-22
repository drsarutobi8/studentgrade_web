import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

Future<GrpcOrGrpcWebClientChannel> createClientChannel() async {
  final _channelOptions = await _createChannelOptions();
  return GrpcOrGrpcWebClientChannel.grpc('localhost',
      port: 9200, options: _channelOptions);
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
  //TODO https://docs.servicestack.net/grpc-flutter#flutter-protoc-grpc-ssl-example
  const _certPath = 'assets/certs/ca.pem';
  final certByteData = await rootBundle.load(_certPath);
  final certUint8List = certByteData.buffer
      .asUint8List(certByteData.offsetInBytes, certByteData.lengthInBytes);
  return certUint8List.cast<int>();
}
