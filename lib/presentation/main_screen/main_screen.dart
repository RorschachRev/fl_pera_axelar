import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/main_screen/wallets_screen.dart';
import 'package:application1/presentation/main_screen/profile_screen.dart';


class MainScreen extends StatelessWidget {
  final controller = Get.put(MainScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Container(
            height: size.height,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 55.0),
                  child: Obx(() => SingleChildScrollView(
                      child: (controller._selectedScreen.value == selectedScreen.wallets) ? WalletsScreen() :
                      (controller._selectedScreen.value == selectedScreen.user) ? ProfileScreen() : null
                  ),)
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: 19,
                        top: 17,
                        right: 17,
                        bottom: 17,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 4,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMenu,
                              height: getVerticalSize(
                                12.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                          ),
                          CommonImageView(
                            svgPath: ImageConstant.imgComputer,
                            height: getSize(
                              21.00,
                            ),
                            width: getSize(
                              21.00,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: size.width,
                            margin: getMargin(
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray103,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: TextButton(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CommonImageView(
                                          svgPath: ImageConstant.imgCreditcard,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                        Obx( () => Padding(
                                          padding: getPadding(
                                            left: 14,
                                            right: 14,
                                          ),
                                          child: (controller._selectedScreen.value == selectedScreen.wallets) ? Text(
                                            "lbl_wallets".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRobotoRegular12.copyWith(
                                              letterSpacing: 0.40,
                                              height: 1.33,
                                            ),
                                          ) : null,
                                        ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      controller._selectedScreen.value = selectedScreen.wallets;
                                    },
                                  )
                                ),
                                Container(
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: TextButton(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CommonImageView(
                                            svgPath: "assets/images/main_screen/img_dashboard.svg",
                                            height: getVerticalSize(
                                              18.00,
                                            ),
                                            width: getHorizontalSize(
                                              19.00,
                                            ),
                                          ),
                                          Obx( () => Padding(
                                            padding: getPadding(
                                              left: 14,
                                              right: 14,
                                            ),
                                            child: (controller._selectedScreen.value == selectedScreen.dashboard) ? Text(
                                              "Dashboard",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtRobotoRegular12.copyWith(
                                                letterSpacing: 0.40,
                                                height: 1.33,
                                              ),
                                            ) : null,
                                          ),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        controller._selectedScreen.value = selectedScreen.dashboard;
                                      },
                                    )
                                ),
                                Container(
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: TextButton(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CommonImageView(
                                            svgPath: "assets/images/main_screen/img_social.svg",
                                            height: getVerticalSize(
                                              18.00,
                                            ),
                                            width: getHorizontalSize(
                                              19.00,
                                            ),
                                          ),
                                          Obx( () => Padding(
                                            padding: getPadding(
                                              left: 14,
                                              right: 14,
                                            ),
                                            child: (controller._selectedScreen.value == selectedScreen.social) ? Text(
                                              "Social",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtRobotoRegular12.copyWith(
                                                letterSpacing: 0.40,
                                                height: 1.33,
                                              ),
                                            ) : null,
                                          ),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        controller._selectedScreen.value = selectedScreen.social;
                                      },
                                    )
                                ),
                                Container(
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: TextButton(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CommonImageView(
                                            svgPath: "assets/images/main_screen/img_messages.svg",
                                            height: getVerticalSize(
                                              18.00,
                                            ),
                                            width: getHorizontalSize(
                                              19.00,
                                            ),
                                          ),
                                          Obx( () => Padding(
                                            padding: getPadding(
                                              left: 14,
                                              right: 14,
                                            ),
                                            child: (controller._selectedScreen.value == selectedScreen.messages) ? Text(
                                              "Messages",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtRobotoRegular12.copyWith(
                                                letterSpacing: 0.40,
                                                height: 1.33,
                                              ),
                                            ) : null,
                                          ),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        controller._selectedScreen.value = selectedScreen.messages;
                                      },
                                    )
                                ),
                                Container(
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: TextButton(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CommonImageView(
                                            svgPath: "assets/images/main_screen/img_user.svg",
                                            height: getVerticalSize(
                                              18.00,
                                            ),
                                            width: getHorizontalSize(
                                              19.00,
                                            ),
                                          ),
                                          Obx( () => Padding(
                                            padding: getPadding(
                                              left: 14,
                                              right: 14,
                                            ),
                                            child: (controller._selectedScreen.value == selectedScreen.user) ? Text(
                                              "User",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtRobotoRegular12.copyWith(
                                                letterSpacing: 0.40,
                                                height: 1.33,
                                              ),
                                            ) : null,
                                          ),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        controller._selectedScreen.value = selectedScreen.user;
                                      },
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        )
    );
  }
}
enum selectedScreen {wallets, dashboard, social, messages, user}
class MainScreenController extends GetxController {
  Rx<selectedScreen> _selectedScreen = selectedScreen.wallets.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
