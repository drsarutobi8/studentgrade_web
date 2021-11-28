import 'package:grpc/grpc_or_grpcweb.dart';

Future<GrpcOrGrpcWebClientChannel> createClientChannel() async {
  final channel = GrpcOrGrpcWebClientChannel.toSeparatePorts(
      grpcPort: 9200,
      grpcTransportSecure: true,
      grpcWebPort: 9280,
      grpcWebTransportSecure: false,
      host: 'localhost');
  return Future.value(channel);
}
