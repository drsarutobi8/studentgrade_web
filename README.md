# starter

A new Flutter project.

## Getting Started

### To make it works with GRPC you need to [Disable CORS](https://stackoverflow.com/questions/65630743/how-to-solve-flutter-web-api-cors-error-only-with-dart-code)
1. Go to flutter\bin\cache and remove a file named: flutter_tools.stamp
```sh
rm ~/snap/flutter/common/flutter/bin/cache/flutter_tools.stamp
```
2. Go to flutter\packages\flutter_tools\lib\src\web and open the file chrome.dart. (for linux is at
```sh
vi ~/snap/flutter/common/flutter/packages/flutter_tools/lib/src/web/chrome.dart
```
3. Find '--disable-extensions'
4. Add '--disable-web-security',

```
flutter run -d chrome --web-port=4200 --web-renderer=html
```

This project is a starting point for a Flutter application.

# Regenerate the stubs
## Installation protoc compiler
* Download binary from [here](https://github.com/protocolbuffers/protobuf/releases)
* unzip to /usr/lib/protoc-xxxx
* > ln -s /usr/lib/protoc-xxxx protoc
* edit /etc/profile
    * add PROTOC_PATH pointing to /usr/lib/protoc and export it
    * add $PROTOC_HOME/bin in PATH
## Installation protoc web compiler
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

