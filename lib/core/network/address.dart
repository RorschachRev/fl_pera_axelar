import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:eip55/eip55.dart';

import '../crypto/formatting.dart';
import '../crypto/keccak.dart';
import '../crypto/secp256k1.dart';

class EthereumAddress {
  static final RegExp _basicAddress = RegExp(r'^(0x)?[0-9a-f]{40}', caseSensitive: false);
  static const addressByteLength = 20;
  final Uint8List addressBytes;

  String get hex =>
    bytesToHex(addressBytes, include0x: true, forcePadLength: 40);

  String get hexNo0x =>
    bytesToHex(addressBytes, include0x: false, forcePadLength: 40);

  String get hexEip55 {
    final eip55 = toChecksumAddress(hexNo0x);
    return '0x$eip55';
  }

  @override
  String toString() => hex;

  @override
  bool operator ==(other) {
    return identical(this, other) ||
        (other is EthereumAddress && const ListEquality().equals(addressBytes, other.addressBytes));
  }

  @override
  int get hashCode {
    return hex.hashCode;
  }
  
  const EthereumAddress(this.addressBytes)
    : assert(addressBytes.length == addressByteLength);

  factory EthereumAddress.fromPublicKey(Uint8List publicKey) {
    return EthereumAddress(publicKeyToAddress(publicKey));
  }

  factory EthereumAddress.fromHex(String hex, {bool enforceEip55 = false}) {
    if (!_basicAddress.hasMatch(hex)) {
      throw ArgumentError.value(
        hex,
        'address',
        'Must be a hex string with a length of 40, optionally prefixed with "0x"',
      );
    }

    if (!enforceEip55 && (hex.toUpperCase() == hex || hex.toLowerCase() == hex)) {
      return EthereumAddress(hexToBytes(hex));
    }

    final address = strip0x(hex);
    final hash = bytesToHex(keccakAscii(address.toLowerCase()));

    for (var i = 0; i < 40; i++) {
      final hashedPos = int.parse(hash[i], radix: 16);
      if ((hashedPos > 7 && address[i].toUpperCase() != address[i]) ||
          (hashedPos <= 7 && address[i].toLowerCase() != address[i])) {
        throw ArgumentError(
          'Address has invalid case characters'
        );
      }
    }

    return EthereumAddress(hexToBytes(hex));
  }
}
