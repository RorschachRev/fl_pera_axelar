import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:application1/core/network/transaction.dart';
import 'package:application1/core/utils/math_utils.dart';
import 'package:collection/collection.dart';
import 'package:eip55/eip55.dart';
import 'package:pointycastle/export.dart';

import '../crypto/formatting.dart';
import '../crypto/keccak.dart';
import '../crypto/secp256k1.dart';
import '../crypto/secp256k1.dart' as secp256k1;
import 'address.dart';

abstract class Credentials {
  static const _messagePrefix = '\u0019Ethereum Signed Message:\n';

  bool get isolateSafe => false;

  Future<EthereumAddress> extractAddress();

  Future<Uint8List> sign(
    Uint8List payload, {
      int? chainId,
      bool isEIP1559 = false,
  }) async {
    final signature = await signToSignature(payload, chainId: chainId, isEIP1559: isEIP1559);

    final r = padUint8ListTo32(unsignedIntToBytes(signature.r));
    final s = padUint8ListTo32(unsignedIntToBytes(signature.s));
    final v = unsignedIntToBytes(BigInt.from(signature.v));
    return uint8ListFromList(r + s + v);
  }

  // Signs the payload with a private key
  Future<MsgSignature> signToSignature(
    Uint8List payload, {
    int? chainId,
    bool isEIP1559 = false,
  });

  Future<Uint8List> signPersonalMessage(Uint8List payload, {int? chainId}) {
    final prefix = _messagePrefix + payload.length.toString();
    final prefixBytes = ascii.encode(prefix);

    final concat = uint8ListFromList(prefixBytes + payload);
    return sign(concat, chainId: chainId);
  }
}

abstract class CredentialsWithKnownAddress extends Credentials {
  EthereumAddress get address;

  @override
  Future<EthereumAddress> extractAddress() async {
    return Future.value(address);
  }
}

abstract class CustomTransactionSender extends Credentials {
  Future<String> sendTransaction(Transaction transaction);
}

class EthPrivateKey extends CredentialsWithKnownAddress {
  final BigInt privateKeyInt;
  final Uint8List privateKey;
  EthereumAddress? _cachedAddress;

  @override
  final bool isolateSafe = true;

  EthPrivateKey(this.privateKey)
    : privateKeyInt = bytesToUnsignedInt(privateKey);

  EthPrivateKey.fromHex(String hex) : this(hexToBytes(hex));
  EthPrivateKey.fromInt(this.privateKeyInt) : privateKey = unsignedIntToBytes(privateKeyInt);

  factory EthPrivateKey.createRandom(Random random) {
    final key = generateNewPrivateKey(random);
    return EthPrivateKey(intToBytes(key));
  }

  @override
  EthereumAddress get address {
    return _cachedAddress ??= EthereumAddress(publicKeyToAddress(privateKeyToPublic(privateKeyInt)));
  }

  Uint8List get encodedPublicKey => privateKeyToPublic(privateKeyInt);

  ECPoint get publicKey => (params.G * privateKeyInt)!;

  @override
  Future<MsgSignature> signToSignature(
    Uint8List payload, {
    int? chainId,
    bool isEIP1559 = false,
  }) async {
    final signature = secp256k1.sign(keccak256(payload), privateKey);

    int chainIdV;
    if (isEIP1559) {
      chainIdV = signature.v - 27;
    } else {
      chainIdV = chainId != null
          ? (signature.v - 27 + (chainId * 2 + 35))
          : signature.v;
    }

    return MsgSignature(signature.r, signature.s, chainIdV);
  }

  @override
  bool operator ==(Object other) {
    identical(this, other) ||
    other is EthPrivateKey &&
      runtimeType == other.runtimeType &&
      const ListEquality().equals(privateKey, other.privateKey);
  }

  @override
  int get hashCode => privateKey.hashCode;
}
