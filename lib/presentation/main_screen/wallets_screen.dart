import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class WalletsScreen extends StatelessWidget {
  final controller = Get.put(WalletsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: AppDecoration.fillGray100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            decoration:
            AppDecoration.fillWhiteA700.copyWith(
              borderRadius:
              BorderRadiusStyle.customBorderBL8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:300,
                      height: 180,
                      margin: EdgeInsets.all(10),
                      child: PageView.builder(
                          itemCount: wallets.length,
                          pageSnapping: true,
                          onPageChanged: (page) {
                            controller.activeWallet.value = page;
                          },
                          itemBuilder: (context, pagePosition) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: AppDecoration
                                  .gradientTealA2006dTeal3002d
                                  .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .roundedBorder8,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(
                                            222.00,
                                          ),
                                          margin: getMargin(
                                            top: 16,
                                            right: 16,
                                            left: 16
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text("Balance"),
                                              Padding(
                                                padding: getPadding(
                                                  top: 10,
                                                  bottom: 2,
                                                ),
                                                child:
                                                CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgMorehoriz,
                                                  height:
                                                  getVerticalSize(
                                                    4.00,
                                                  ),
                                                  width:
                                                  getHorizontalSize(
                                                    16.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      Container(
                                          margin: getMargin(top: 10),
                                          child: Padding(
                                            padding: getPadding(
                                              left: 16,
                                              right: 16,
                                            ),
                                            child: Text(
                                              "\$ " + wallets[pagePosition].walletBalanceUSD.toString(),
                                              overflow:
                                              TextOverflow
                                                  .ellipsis,
                                              textAlign: TextAlign
                                                  .center,
                                              style: AppStyle
                                                  .txtInterMedium20
                                                  .copyWith(
                                                height: 0.80,
                                              ),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: getHorizontalSize(
                                        226.00,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        top: 25,
                                        right: 16,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        mainAxisSize:
                                        MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              wallets[pagePosition].name,
                                              overflow:
                                              TextOverflow
                                                  .ellipsis,
                                              textAlign:
                                              TextAlign
                                                  .center,
                                              style: AppStyle
                                                  .txtInterSemiBold14
                                                  .copyWith(
                                                height: 1.14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        144.00,
                      ),
                      width: getHorizontalSize(
                        40.00,
                      ),
                      margin: getMargin(right:10),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant
                                .black9001e,
                            width: getHorizontalSize(
                              2.00,
                            ),
                          ),
                          borderRadius:
                          BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.addNewWalletScreen);
                          },
                          child:  Align(
                            alignment:
                            Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 13,
                                top: 40,
                                right: 13,
                                bottom: 40,
                              ),
                              child: Text(
                                "+", style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Obx(() =>
                    Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < wallets.length; i++) Container(
                            margin: EdgeInsets.all(3),
                            width: 8,
                            height: 9,
                            decoration: BoxDecoration(
                                color: i == controller.activeWallet.value ? Colors.blue : Colors.black26,
                                shape: BoxShape.circle),
                          )
                        ],
                      ),
                    ),
                ),
                Padding(
                  padding: getPadding(
                    all: 16,
                  ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: EdgeInsets.all(2),
                              child: ElevatedButton(
                                child: CommonImageView(
                                  svgPath: ImageConstant
                                      .imgBlueA400,
                                ),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.sendingScreen);
                                },
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(52, 52)),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_send".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: EdgeInsets.all(2),
                              child: ElevatedButton(
                                child: CommonImageView(
                                  svgPath: ImageConstant
                                      .imgBlueA40052X52,
                                ),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.requestPreferencesScreen);
                                },
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(52, 52)),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_recieve".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: EdgeInsets.all(2),
                              child: ElevatedButton(
                                child: CommonImageView(
                                  svgPath: ImageConstant
                                      .img,
                                ),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.sendingScreen);
                                },
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(52, 52)),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_swap".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: EdgeInsets.all(2),
                              child: ElevatedButton(
                                child: CommonImageView(
                                  svgPath: ImageConstant
                                      .img52X52,
                                ),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.sendingScreen);
                                },
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(52, 52)),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_history".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: getMargin(
              top: 8,
            ),
            decoration:
            AppDecoration.fillWhiteA700.copyWith(
              borderRadius:
              BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 8,
                    right: 16,
                  ),
                  child: Text(
                    "lbl_my_coins".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle
                        .txtInterMedium18Black90099
                        .copyWith(
                      letterSpacing: 0.15,
                      height: 1.56,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 16,
                      bottom: 161,
                    ),
                    child: Obx(
                          () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: wallets[controller.activeWallet.value].tokens.length,
                        itemBuilder: (context, index) {
                          TokenItem token = wallets[controller.activeWallet.value].tokens[index];
                          return WalletsCoins(token.name, token.fullName, token.balance, token.balanceUSD, 0.0);
                        },
                      ),
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
Align WalletsCoins(String name, String hintText, double balance, double usdBalance, double persentage) {
  return Align(
    alignment: Alignment.center,
    child: Padding(
      padding: getPadding(
        top: 12.0,
        bottom: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                child: CommonImageView(
                  svgPath: (name == "ETH") ? ImageConstant.imgEthereumBadge :
                  (name == "BTC") ? ImageConstant.imgBitcoinBadge : ImageConstant.imgCosmosBadge,
                  height: getSize(
                    40.00,
                  ),
                  width: getSize(
                    40.00,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Black90099.copyWith(
                      letterSpacing: 0.10,
                      height: 1.43,
                    ),
                  ),
                  Text(
                    hintText,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Black90099.copyWith(
                      letterSpacing: 0.10,
                      height: 1.43,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                balance.toString() + " " + name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14Black900.copyWith(
                  letterSpacing: 0.07,
                  height: 1.43,
                ),
              ),
              Text(
                "\$" + usdBalance.toString(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14Black900.copyWith(
                  letterSpacing: 0.07,
                  height: 1.43,
                ),
              ),
            ]
          ),
           Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    persentage.toString() + '%',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: AppStyle.txtInterMedium12.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    ),
  );
}
class WalletsController extends GetxController {
  RxInt activeWallet = (0).obs;
  @override
  void onInit() {
    super.onInit();
    wallets[0].AddToken("ETH", "Ethereum", 100, 2.8);
    wallets[0].AddToken("BTC", "Bitcoin", 1000, 2.9);
    wallets[1].AddToken("USDT", "Tether", 20, 1.0);
  }
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
