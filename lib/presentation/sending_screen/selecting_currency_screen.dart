import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SelectingCurrencyScreen extends StatefulWidget {
  @override
  State<SelectingCurrencyScreen> createState() => _selectingCurrencyScreen();
}
class _selectingCurrencyScreen extends State<SelectingCurrencyScreen> {
  final item_controller = Get.put(SelectingCurrencyDropdownController());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
              key: formKey,
              child: Container(
                width: size.width,
                height: size.height,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: size.width,
                                  child: Container(
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 22,
                                                        top: 18,
                                                        bottom: 18),
                                                    child: SvgImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height:
                                                        getVerticalSize(20.00),
                                                        width: getHorizontalSize(
                                                            11.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 81,
                                                    top: 16,
                                                    right: 115,
                                                    bottom: 16),
                                                child: Text(
                                                    "Select Currency",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle.txtInterMedium16
                                                        .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.50)))
                                          ])))),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 16, top: 16, right: 16),
                              decoration: AppDecoration.outlineBlack9001e12
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder8),
                              child: DropdownButton<SelectionPopupModel>(
                                icon: Expanded (
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(right: 10),
                                        child: SvgImageView(
                                            svgPath: ImageConstant.imgArrowDownGray,
                                            height:
                                            getVerticalSize(7.00),
                                            width: getHorizontalSize(
                                                12.00)),
                                      )
                                  ),
                                ),
                                value: item_controller.currentItemCurrency.value,
                                onChanged: (SelectionPopupModel? newValue) {
                                  setState(() {
                                    item_controller.currentItemCurrency.value = newValue!;
                                  });
                                },
                                items: item_controller.selectingCurrencyDropdownModelObj.value.dropdownItemList.map((SelectionPopupModel item) {
                                  return DropdownMenuItem<SelectionPopupModel>(
                                    value: item,
                                    child: Row(
                                        children: [
                                          SvgImageView(
                                            svgPath: item.imageConst,
                                            width: 30,
                                            height: 30,
                                          ),
                                          Container(
                                            margin: getMargin(left: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(item.title,),
                                                Text(item.amount.toString() + " " + item.hint,)
                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: getMargin(right: 14, left: 14, top: 10),
                            padding: getPadding(left: 10),
                            child: Text("Current preference:", style: TextStyle(fontSize: 15),),
                          ),
                          Container(
                            width: double.infinity,
                            margin: getMargin(right: 14, left: 14, top: 10),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "ETH - ${wallets[0].name} - ${wallets[0].walletBalanceUSD} \$",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  8.00,
                                ),
                              ),
                              border: Border.all(
                                color: ColorConstant.bluegray100,
                                width: 1.1,
                              ),
                            ),
                          ),
                          TextButton(
                            child: Text("Change preference", style: TextStyle(fontSize: 13),),
                            onPressed: () {

                            },
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child:  ElevatedButton(
                          child: Text('Continue'),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Get.toNamed(AppRoutes.selectingCurrencyAmountScreen + '?&currency=${item_controller.currentItemCurrency.value.hint}');
                            }
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                          ),
                        ),
                      ),
                    ],
                )
              )
            )
        )
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
Container currencyDropdownItem(String item) {
  return Container(
      // margin: getMargin(
      //     left: 16, top: 8, right: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              getHorizontalSize(8.00))),
      child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          crossAxisAlignment:
          CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: getPadding(left: 8),
                child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                    mainAxisSize:
                    MainAxisSize.min,
                    children: [
                      Padding(
                          padding: getPadding(
                              top: 3,
                              bottom: 15),
                          child: SvgImageView(
                              svgPath: (item == "Ethereum") ? ImageConstant.imgEthereumBadge :
                              (item == "Bitcoin") ? ImageConstant.imgBitcoinBadge : ImageConstant.imgCosmosBadge,
                              height:
                              getVerticalSize(
                                  24.00),
                              width:
                              getHorizontalSize(
                                  16.00))),
                      Container(
                          margin: getMargin(
                              left: 16),
                          child: Column(
                              mainAxisSize:
                              MainAxisSize
                                  .min,
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left:
                                        1,
                                        right:
                                        10),
                                    child: Text(
                                        item,
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign: TextAlign
                                            .right,
                                        style: AppStyle.txtInterRegular14Black900.copyWith(
                                            letterSpacing: 0.07,
                                            height: 1.43))),
                                Text(
                                    "msg_${item}_balance".tr,
                                    overflow:
                                    TextOverflow
                                        .ellipsis,
                                    textAlign:
                                    TextAlign
                                        .right,
                                    style: AppStyle.txtInterMedium14.copyWith(
                                        letterSpacing:
                                        0.10,
                                        height:
                                        1.71))
                              ]))
                    ])),
          ])
  );
}
class SelectingCurrencyDropdownController extends GetxController {
  Rx<SelectingCurrencyModel> selectingCurrencyDropdownModelObj =
      SelectingCurrencyModel().obs;
  Rx<SelectionPopupModel> currentItemCurrency = SelectionPopupModel(title: 'Not Chosen').obs;
  void onInit() {
    super.onInit();
    selectingCurrencyDropdownModelObj.value.dropdownItemList.forEach((element) {
      if (element.isSelected == true) {
        currentItemCurrency.value = element;
        update();
      }
    });
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
class SelectingCurrencyModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 0,
      title:  "Ethereum",
      hint: "ETH",
      imageConst: ImageConstant.imgEthereumBadge,
      isSelected: true,
      amount: 13.0,
    ),
    SelectionPopupModel(
      id: 1,
      title: "Bitcoin",
      hint: "BTC",
      amount: 0.0,
      imageConst: ImageConstant.imgBitcoinBadge,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Tether",
      hint: "USDT",
      imageConst: ImageConstant.imgCosmosBadge,
    )
  ].obs;
}

class SelectingCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectingCurrencyDropdownController());
  }
}