import 'dart:ffi';
import 'dart:typed_data';

import '../../../network/credentials.dart';
import '../../../crypto/formatting.dart';
import '../../../utils/length_tracking_byte_sink.dart';
import 'types.dart';

abstract class _IntTypeBase extends AbiType<BigInt> {
  const _IntTypeBase(this.length)
    : assert(length % 8 == 0),
      assert(0 < length && length <= 256);

  final int length;

  @override
  EncodingLengthInfo get encodingLength =>
      const EncodingLengthInfo(sizeUnitBytes);

  String get _namePrefix;

  @override
  String get name => _namePrefix + length.toString();

  void validate() {
    if (length % 8 != 0 || length < 0 || length > 256) {
      throw Exception('Invalid length for int type: $length');
    }
  }

  @override
  DecodingResult<BigInt> decode(ByteBuffer buffer, int offset) {
    return DecodingResult(
      _decode32Bytes(buffer.asUint8List(offset, sizeUnitBytes)),
      sizeUnitBytes,
    );
  }

  BigInt _decode32Bytes(Uint8List data);

  @override
  String toString() {
    return '$runtimeType(length = $length)';
  }
}
