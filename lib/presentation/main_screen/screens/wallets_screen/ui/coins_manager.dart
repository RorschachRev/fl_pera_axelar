import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../wallets_controller.dart';

class CoinsManager extends StatelessWidget {
  final controller = Get.put(WalletsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: getMargin(
        top: 8,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
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
              style: AppStyle.txtInterMedium18Black90099.copyWith(
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
              ),
              child: Obx(
                () => ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount:
                      wallets[controller.activeWallet.value].tokens.length,
                  itemBuilder: (context, index) {
                    TokenItem token =
                        wallets[controller.activeWallet.value].tokens[index];
                    return WalletsCoins(token.name, token.fullName,
                        token.balance, token.balanceUSD, 0.0);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Align WalletsCoins(String name, String hintText, double balance,
    double usdBalance, double persentage) {
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
                  svgPath: (name == "ETH")
                      ? ImageConstant.imgEthereumBadge
                      : (name == "BTC")
                          ? ImageConstant.imgBitcoinBadge
                          : ImageConstant.imgCosmosBadge,
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
              ]),
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
