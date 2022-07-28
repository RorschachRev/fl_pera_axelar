import '../controller/wallets_controller.dart';
import '../models/wallets_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WalletsItemWidget extends StatelessWidget {
  WalletsItemWidget(this.walletsItemModelObj);

  WalletsItemModel walletsItemModelObj;

  var controller = Get.find<WalletsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgArrowdown,
                    height: getSize(
                      40.00,
                    ),
                    width: getSize(
                      40.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    80.00,
                  ),
                  margin: getMargin(
                    left: 8,
                  ),
                  child: Text(
                    "lbl_eth_ethereum2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Black90099.copyWith(
                      letterSpacing: 0.10,
                      height: 1.43,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    bottom: 20,
                  ),
                  child: Text(
                    "lbl_1_2_eth_0".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Black900.copyWith(
                      letterSpacing: 0.07,
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: getMargin(
                left: 70,
                top: 26,
                right: 4,
                bottom: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    4.00,
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
                      "lbl_02".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterMedium12.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
