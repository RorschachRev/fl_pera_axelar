import '../controller/selecting_an_amount_currency_one_controller.dart';
import '../models/gridone1_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridone1ItemWidget extends StatelessWidget {
  Gridone1ItemWidget(this.gridone1ItemModelObj);

  Gridone1ItemModel gridone1ItemModelObj;

  var controller = Get.find<SelectingAnAmountCurrencyOneController>();

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
