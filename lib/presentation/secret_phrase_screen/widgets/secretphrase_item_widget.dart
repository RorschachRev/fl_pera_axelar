import '../models/secretphrase_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecretphraseItemWidget extends StatelessWidget {
  SecretphraseItemWidget(this.secretphraseItemModelObj);

  SecretphraseItemModel secretphraseItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: getPadding(
          right: 5,
          bottom: 5,
        ),
        child: ChoiceChip(
          label: Text(
            secretphraseItemModelObj.secretphrasewTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.black900Dd,
              fontSize: getFontSize(
                14,
              ),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          selected: secretphraseItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.fromHex("#33000000"),
          shape: secretphraseItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.fromHex("#ff197aff"),
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.fromHex("#ff197aff"),
                    width: getHorizontalSize(
                      1.50,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                ),
          onSelected: (value) {
            secretphraseItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
