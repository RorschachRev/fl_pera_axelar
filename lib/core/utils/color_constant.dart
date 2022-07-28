import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7009f = fromHex('#9fffffff');

  static Color black9003d = fromHex('#3d000000');

  static Color blueA400 = fromHex('#197aff');

  static Color tealA2006d = fromHex('#6d6af9d2');

  static Color black9001e = fromHex('#1e000000');

  static Color blueA4003d = fromHex('#3d197aff');

  static Color teal300 = fromHex('#50af95');

  static Color black900Dd = fromHex('#dd000000');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color gray501 = fromHex('#979797');

  static Color tealA700 = fromHex('#03c78f');

  static Color gray103 = fromHex('#f2f2f7');

  static Color gray500 = fromHex('#949494');

  static Color amber600 = fromHex('#f5b300');

  static Color gray900 = fromHex('#1c1b1f');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color gray101 = fromHex('#f2f2f2');

  static Color gray102 = fromHex('#f6f3f3');

  static Color gray100 = fromHex('#f7f7f7');

  static Color black90099 = fromHex('#99000000');

  static Color bluegray10000 = fromHex('#00cce2dc');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#cce2dc');

  static Color blue300 = fromHex('#6495ff');

  static Color teal3002d = fromHex('#2d50af95');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
