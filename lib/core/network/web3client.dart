import 'dart:async';
import 'dart:typed_data';

import 'package:stream_channel/stream_channel.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:json_rpc_2/json_rpc_2.dart' as rpc;
import 'package:stream_transform/stream_transform.dart';

typedef SocketConnector = StreamChannel<String> Function();

// class Web3Client {
//   Web3Client(String url, Client httpClient, {SocketConnector? socketConnector})
//     : this.custom(JsonRPC(url, httpClient), socketConnector: socketConnector);
//
//   Web3Client.custom(RpcService rpc, )
// }
