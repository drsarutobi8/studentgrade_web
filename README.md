# starter

A new Flutter project.

## Getting Started

flutter run -d web-server --web-port=4200

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Regenerate the stubs


# Installation protoc compiler
* Download binary from [here](https://github.com/protocolbuffers/protobuf/releases)
* unzip to /usr/lib/protoc-xxxx
* > ln -s /usr/lib/protoc-xxxx protoc
* edit /etc/profile
    * add PROTOC_PATH pointing to /usr/lib/protoc and export it
    * add $PROTOC_HOME/bin in PATH
# Installation protoc web compiler
* Download binary from [here](https://github.com/grpc/grpc-web/releases)

```sh
$ sudo mkdir protoc-gen-grpc-web-xxx
$ sudo mkdir protoc-gen-grpc-web-xxx/bin
$ sudo mv ~/Downloads/protoc-gen-grpc-web-xxx /usr/lib/protoc-gen-grpc-web-xxx/bin/protoc-gen-grpc-web
$ sudo chmod +x /usr/lib/protoc-gen-grpc-web-xxx/bin/protoc-gen-grpc-web-xxx
$ sudo ln -s /usr/lib/protoc-gen-grpc-web-xxx /usr/lib/protoc-gen-grrc-web
```

* edit /etc/profile
    * add PROTOC_WEB_PATH pointing to /usr/lib/protoc_web and export it
    * add $PROTOC_WEB_HOME/bin in PATH
* edit ~/.bashrc
    * add `~/.pub-cache/bin` to your PATH,

```sh
$ mkdir lib/grpc_stub
$ protoc --dart_out=grpc:lib/grpc_stub/ -I./protos ./protos/*.proto google/protobuf/timestamp.proto
```

```sh
$ mkdir -p js/dist/proto
$ protoc -I . echo.proto --js_out=import_style=commonjs:./js/dist/proto --grpc-web_out=import_style=commonjs,mode=grpcwebtext:./js/dist/proto
```