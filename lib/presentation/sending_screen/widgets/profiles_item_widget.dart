import '../controller/sending_controller.dart';
import '../models/profiles_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilesItemWidget extends StatelessWidget {
  ProfilesItemWidget(this.profilesItemModelObj);

  ProfilesItemModel profilesItemModelObj;

  var controller = Get.find<SendingController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 16,
        top: 8.0,
        right: 16,
        bottom: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              bottom: 40,
            ),
            child: Text(
              "lbl_from".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium16Black900.copyWith(
                letterSpacing: 0.16,
                height: 1.50,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
            ),
            decoration: AppDecoration.outlineBlack9001e.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 12,
                    bottom: 12,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.img1419515122agen,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 8,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: Text(
                          "lbl_agent_smith".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14.copyWith(
                            letterSpacing: 0.10,
                            height: 1.71,
                          ),
                        ),
                      ),
                      Text(
                        "msg_balance_100".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14.copyWith(
                          letterSpacing: 0.07,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 46,
                    top: 27,
                    right: 14,
                    bottom: 28,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgArrowdownGray900,
                    height: getVerticalSize(
                      7.00,
                    ),
                    width: getHorizontalSize(
                      12.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
