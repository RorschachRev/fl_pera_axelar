import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SelectingCurrencyOnScreen extends StatelessWidget {
  final controller = Get.put(SelectingAnAmountCurrencyController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                          MainAxisAlignment.spaceBetween,
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
                                                padding:
                                                getPadding(top: 16, bottom: 16),
                                                child: Text("lbl_request".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle.txtInterMedium16
                                                        .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.50))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 21, right: 21, bottom: 21),
                                                child: SvgImageView(
                                                    svgPath: ImageConstant.imgClose,
                                                    height: getSize(14.00),
                                                    width: getSize(14.00)))
                                          ])))),
                          Container(
                              margin: getMargin(left: 15, top: 32, right: 15),
                              decoration: AppDecoration.outlineBluegray100.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 8, bottom: 10),
                                        child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SvgImageView(
                                                  svgPath: Get.parameters['imageConst']!,
                                                  height:
                                                  getVerticalSize(
                                                      24.00),
                                                  width:
                                                  getHorizontalSize(
                                                      16.00)
                                              ),
                                              Container(
                                                  margin: getMargin(left: 8),
                                                  child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Obx(
                                                              () => Container(
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Text(controller.formValue.value,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium16Black900
                                                                            .copyWith(
                                                                            letterSpacing:
                                                                            0.16,
                                                                            height:
                                                                            1.50)),
                                                                    Text(" " + Get.parameters['currency']!,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium16Black900
                                                                            .copyWith(
                                                                            letterSpacing:
                                                                            0.16,
                                                                            height:
                                                                            1.50))
                                                                  ]
                                                              )
                                                          ),
                                                        ),

                                                        Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Padding(
                                                                padding: getPadding(
                                                                    top: 2),
                                                                child: Text(
                                                                    "lbl_12_442".tr,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular14
                                                                        .copyWith(
                                                                        letterSpacing:
                                                                        0.07,
                                                                        height:
                                                                        1.43)
                                                                )
                                                            )
                                                        )
                                                      ]
                                                  )
                                              )
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 22, right: 20, bottom: 22),
                                        child: SvgImageView(
                                            svgPath: ImageConstant.imgSort,
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(16.00)))
                                  ]
                              )
                          ),
                        ],
                      ),
                      Align(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 350,
                              height: 300,
                              child: GridView.count(
                                crossAxisSpacing: 80,
                                crossAxisCount: 3,
                                children: List.generate(12, (index) {
                                  return numberButton((index + 1).toString());
                                }),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child:  ElevatedButton(
                                child: Text('Continue'),
                                onPressed: () {
                                  if (double.tryParse(controller.formValue.value) == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: const Text('Please input correct value'),
                                        )
                                    );
                                    controller.formValue.value = "";
                                  }
                                  else {
                                    Get.offAllNamed(AppRoutes.sendingLinkCurrencyScreen + '?amount=${controller.formValue.value}&currency=${Get.parameters['currency']}');
                                  }
                                },
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]
                )
            )
        )
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }
  TextButton numberButton(String number) {
    switch (number) {
      case "10": number = "."; break;
      case "11": number = "0"; break;
      case "12": number = "del"; break;
      default: number = number; break;
    }
    return TextButton(
      child: Text(number, style: TextStyle(color: Colors.black),),
      onPressed: () {
        if (number == "del") {
          controller.formValue.value = controller.formValue.value.substring(0, controller.formValue.value.length - 1);
        }
        else {
          controller.formValue.value += number.toString();
        }
      },
      //ImageConstant.imgDelete,
    );
  }
}

class SelectingAnAmountCurrencyController extends GetxController {
  RxString formValue = "".obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
