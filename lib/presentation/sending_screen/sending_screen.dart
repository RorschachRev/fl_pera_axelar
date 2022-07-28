import '../sending_screen/widgets/profiles_item_widget.dart';
import 'controller/sending_controller.dart';
import 'models/profiles_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SendingScreen extends GetWidget<SendingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: size.width,
                          child: Container(
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 22, top: 18, bottom: 18),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(20.00),
                                                width:
                                                    getHorizontalSize(11.00)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 114,
                                            top: 16,
                                            right: 147,
                                            bottom: 16),
                                        child: Text("lbl_sending".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterMedium16
                                                .copyWith(
                                                    letterSpacing: 0.16,
                                                    height: 1.50)))
                                  ]))),
                      Container(
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.sendingModelObj.value
                                  .profilesItemList.length,
                              itemBuilder: (context, index) {
                                ProfilesItemModel model = controller
                                    .sendingModelObj
                                    .value
                                    .profilesItemList[index];
                                return ProfilesItemWidget(model);
                              }))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 7),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 16, right: 16),
                                    child: Text("lbl_recent".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Black90099
                                            .copyWith(
                                                letterSpacing: 0.16,
                                                height: 1.50))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        margin: getMargin(
                                            left: 16, top: 16, right: 16),
                                        decoration: AppDecoration
                                            .outlineBlack9001e
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 8,
                                                      bottom: 8),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  20.00)),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPhoto,
                                                          height:
                                                              getSize(40.00),
                                                          width:
                                                              getSize(40.00)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 20,
                                                      bottom: 20),
                                                  child: Text(
                                                      "msg_0xc34281_fr21".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14Black90099
                                                          .copyWith(
                                                              height: 1.14))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      right: 18,
                                                      bottom: 23),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark,
                                                      height:
                                                          getVerticalSize(9.00),
                                                      width: getHorizontalSize(
                                                          12.00)))
                                            ]))),
                                CustomButton(
                                    width: 328,
                                    text: "lbl_continue".tr,
                                    margin: getMargin(
                                        left: 16,
                                        top: 344,
                                        right: 16,
                                        bottom: 40))
                              ])),
                      Container(
                          height: getVerticalSize(2.00),
                          width: getHorizontalSize(64.00),
                          margin: getMargin(left: 148, right: 148, bottom: 6),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(1.00))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
