import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:application1/widgets/custom_close_icon.dart';

class SelectingUSDScreen extends StatelessWidget {
  final controller = Get.put(SelectingAnAmountCurrencyOneController());
  final formKey = GlobalKey<FormState>();
  final textEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                child: Form(
                      key: formKey,
                      child: Column(
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
                                                        child: CommonImageView(
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
                                                  child: CustomCloseIcon(AppRoutes.mainScreen),)
                                              ]
                                          )
                                      )
                                  )
                              ),
                              Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      margin: getMargin(right: 14, left: 14, top: 10),
                                      padding: getPadding(left: 20, top: 2),
                                      width: double.infinity,
                                      alignment: Alignment.topCenter,
                                      child: TextFormField(
                                        controller: textEditController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter value';
                                          }
                                          if (double.tryParse(value) == null) {
                                            return 'Enter only numbers';
                                          }
                                          controller.formValue.value = double.parse(value).toString();
                                          return null;
                                        },
                                        readOnly: true,
                                        autofocus: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    )
                                  ),
                                  Container(
                                    margin: getMargin(right: 14, left: 14, top: 10, bottom: 11),
                                    alignment: Alignment.center,
                                    padding: getPadding(left: 10),
                                    width: double.infinity,
                                    height: 50,
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("\$  "),
                                            ),
                                          ],
                                        )
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
                                ],
                              ),
                              // Container(
                              //   margin: getMargin(right: 14, left: 14, top: 10),
                              //   padding: getPadding(left: 10),
                              //   width: double.infinity,
                              //   height: 50,
                              //   child: Align(
                              //       alignment: Alignment.centerLeft,
                              //       child: Row(
                              //         children: [
                              //           Align(
                              //             alignment: Alignment.centerLeft,
                              //             child: Text("\$  "),
                              //           ),
                              //           Expanded(
                              //             child: TextFormField(
                              //               controller: textEditController,
                              //               validator: (value) {
                              //                 if (value == null || value.isEmpty) {
                              //                   return 'Please enter value';
                              //                 }
                              //                 if (double.tryParse(value) == null) {
                              //                   return 'Enter only numbers';
                              //                 }
                              //                 controller.formValue.value = double.parse(value).toString();
                              //                 return null;
                              //               },
                              //               readOnly: true,
                              //               autofocus: true,
                              //               decoration: InputDecoration(
                              //                 border: InputBorder.none,
                              //               ),
                              //             ),
                              //           ),
                              //
                              //         ],
                              //       )
                              //   ),
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(
                              //       getHorizontalSize(
                              //         8.00,
                              //       ),
                              //     ),
                              //     border: Border.all(
                              //       color: ColorConstant.bluegray100,
                              //       width: 1.1,
                              //     ),
                              //   ),
                              // ),
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

                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
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
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child:  ElevatedButton(
                                  child: Text('Continue'),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      Get.toNamed(AppRoutes.sendLinkUSDScreen + '?amount=${controller.formValue.value}');
                                    }
                                  },
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                )
            )
        )
    );
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
        textEditController.text = controller.formValue.value;
      },
      //ImageConstant.imgDelete,
    );
  }
  onTapImgArrowleft() {
    Get.back();
  }
}
class SelectingAnAmountCurrencyOneController extends GetxController {
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