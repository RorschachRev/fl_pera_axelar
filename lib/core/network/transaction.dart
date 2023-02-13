import 'dart:async';
import 'dart:typed_data';

import 'package:stream_channel/stream_channel.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:json_rpc_2/json_rpc_2.dart' as rpc;
import 'package:stream_transform/stream_transform.dart';

// class Transaction {
//   Transaction({
//     this.from,
//     this.to,
//     this.maxGas,
//     this.gasPrice,
//     this.value,
//     this.data,
//     this.nonce,
//     this.maxFeePerGas,
//     this.maxPriorityFeePerGas,
//   });
//
//   Transaction.callContract({
//     required DeployedContract contract,
//
//   })
// }
