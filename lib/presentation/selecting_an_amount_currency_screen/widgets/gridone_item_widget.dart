import '../controller/selecting_an_amount_currency_controller.dart';
import '../models/gridone_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridoneItemWidget extends StatelessWidget {
  GridoneItemWidget(this.gridoneItemModelObj);

  GridoneItemModel gridoneItemModelObj;

  var controller = Get.find<SelectingAnAmountCurrencyController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "lbl_1".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.txtRobotoRegular30.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
