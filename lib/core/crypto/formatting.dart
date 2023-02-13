import 'dart:typed_data';
import 'package:convert/convert.dart';

import 'package:pointycastle/src/utils.dart' as p_utils;

// Strips 0x from the start of hex string
String strip0x(String hex) {
  if (hex.startsWith('0x')) return hex.substring(2);
  return hex;
}

String bytesToHex(
  List<int> bytes, {
    bool include0x = false,
    int? forcePadLength,
    bool padToEvenLength = false,
}) {
  var encoded = hex.encode(bytes);

  if (forcePadLength != null) {
    assert(forcePadLength >= encoded.length);

    final padding = forcePadLength - encoded.length;
    encoded = ('0' * padding) + encoded;
  }

  if (padToEvenLength && encoded.length % 2 != 0) {
    encoded = '0$encoded';
  }

  return (include0x ? '0x' : '') + encoded;
}

Uint8List hexToBytes(String hexStr) {
  final bytes = hex.decode(strip0x(hexStr));
  if (bytes is Uint8List) return bytes;
  return Uint8List.fromList(bytes);
}

Uint8List unsignedIntToBytes(BigInt number) {
  assert(!number.isNegative);
  return p_utils.encodeBigIntAsUnsigned(number);
}

BigInt bytesToUnsignedInt(Uint8List bytes) {
  return p_utils.decodeBigIntWithSign(1, bytes);
}

BigInt bytesToInt(List<int> bytes) {
  return p_utils.decodeBigInt(bytes);
}

Uint8List intToBytes(BigInt number) {
  return p_utils.encodeBigInt(number);
}

BigInt hexToInt(String hex) {
  return BigInt.parse(strip0x(hex), radix: 16);
}

int hexToDartInt(String hex) {
  return int.parse(strip0x(hex), radix: 16);
}
