import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SendingScreen extends StatelessWidget {
  final controller = Get.put(SendingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                height: size.height,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                                  }))
                          ),
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
                                  ])),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child:  ElevatedButton(
                          child: Text('Continue'),
                          onPressed: () {
                            Get.toNamed(AppRoutes.selectingCurrencyScreen);
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                          ),
                        ),
                      ),
                    ]))
        )
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
class SendingController extends GetxController {
  Rx<SendingModel> sendingModelObj = SendingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
class ProfilesItemModel {}
class SendingModel {
  RxList<ProfilesItemModel> profilesItemList =
  RxList.filled(2, ProfilesItemModel());
}
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
                      imagePath: ImageConstant.imgAvatarAgent,
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
                    svgPath: ImageConstant.imgArrowDownGray,
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
class SendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendingController());
  }
}