import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get gradientTealA2006dTeal3002d => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -4.555737287414985e-9,
            0.05714284922596358,
          ),
          end: Alignment(
            0.9826922534037321,
            1.000000032279009,
          ),
          colors: [
            ColorConstant.tealA2006d,
            ColorConstant.teal3002d,
          ],
        ),
      );
  static BoxDecoration get outlineBluegray10012 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlue300 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blue300,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9001e => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black9001e,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlueA4003d => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueA4003d,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray501 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray501,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: ColorConstant.blueA400,
      );
  static BoxDecoration get txtFillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillGray101 => BoxDecoration(
        color: ColorConstant.gray101,
      );
  static BoxDecoration get fillWhiteA7009f => BoxDecoration(
        color: ColorConstant.whiteA7009f,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get outlineBlack9001e12 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black9001e,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius circleBorder96 = BorderRadius.circular(
    getHorizontalSize(
      96.00,
    ),
  );

  static BorderRadius customBorderBL8 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );
}
