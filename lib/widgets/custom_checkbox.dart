import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.padding,
      this.iconSize,
      this.value,
      this.onChange,
      this.text});

  CheckboxShape? shape;

  CheckboxVariant? variant;

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          value = !(value!);
          onChange!(value!);
        },
        child: Row(
          children: [
            SizedBox(
              height: getHorizontalSize(iconSize ?? 0),
              width: getHorizontalSize(iconSize ?? 0),
              child: Checkbox(
                shape: _setShape(),
                value: value ?? false,
                onChanged: (value) {
                  onChange!(value!);
                },
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
              ),
              child: Text(
                text ?? "",
                textAlign: TextAlign.center,
                style: _setFontStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
    }
  }

  _setShape() {
    switch (variant) {
      default:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.black90099,
            width: 2,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.black900Dd,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum CheckboxShape { RoundedBorder2 }
enum CheckboxVariant { OutlineBlack90099 }
enum CheckboxFontStyle { InterRegular14 }
