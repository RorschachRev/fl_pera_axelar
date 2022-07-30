import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SelectingCurrencyScreen extends StatefulWidget {
  @override
  State<SelectingCurrencyScreen> createState() => _selectingCurrencyScreen();
}
class _selectingCurrencyScreen extends State<SelectingCurrencyScreen> {
  String dropdownValue = 'Ethereum';
  double amount = 0;
  TextEditingController controller = new TextEditingController();
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
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
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
                                                        child: CommonImageView(
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
                                                        "lbl_enter_an_amount".tr,
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
                                      child: DropdownButton<String>(
                                        icon: Padding(
                                                padding: const EdgeInsets.only(left: 0),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownGray900,
                                                    height:
                                                    getVerticalSize(7.00),
                                                    width: getHorizontalSize(
                                                        12.00))
                                        ),
                                          value: dropdownValue,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          items: <String>['Ethereum', 'Bitcoin', 'Cosmos']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: currencyDropdownItem(value),
                                            );
                                          }).toList(),
                                      ),
                                  ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 48, right: 16),
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter some number';
                                            }
                                            if (double.tryParse(value) == null) {
                                              return 'Please enter correct number';
                                            }
                                            amount = double.parse(value);
                                            return null;
                                          },
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterRegular34
                                              .copyWith(letterSpacing: 0.25),
                                        controller: controller,

                                      )
                                  )
                              ),
                              Container(
                                  height: getSize(1.00),
                                  width: getSize(1.00),
                                  margin: getMargin(left: 10, top: 267),
                                  decoration:
                                  BoxDecoration(color: ColorConstant.black900)),
                              CustomButton(
                                    width: 328,
                                    text: "lbl_continue".tr,
                                    margin: getMargin(left: 15, top: 100, right: 15),
                                    onTap: () {
                                      if (formKey.currentState!.validate()) {
                                          Get.toNamed('/sending/checkout_screen?amount=${amount}&currency=${dropdownValue}');
                                      }
                                    },
                              ),
                            ],
                        )
                    ),
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
                          child: CommonImageView(
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

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
class SelectingCurrencyModel {}

class SelectingCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectingCurrencyDropdownController());
  }
}