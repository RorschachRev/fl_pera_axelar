import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant.imgClose,
                                                        height: getSize(14.00),
                                                        width: getSize(14.00)))
                                              ])))),
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                      Container(
                                        margin: getMargin(right: 14, left: 14),
                                        padding: getPadding(left: 10),
                                        width: double.infinity,
                                        height: 50,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
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
                                              hintText: "\$ 0.0"
                                            ),
                                          ),
                                        ),
                                        // child: TextField(
                                        //   decoration: InputDecoration(
                                        //     border: InputBorder.none,
                                        //     hintText: '\$0',
                                        //   ),
                                        //   keyboardType: TextInputType.none,
                                        // ),
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
                                    Container(
                                      margin: getMargin(top: 100, bottom: 100),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                            width: 300,
                                            height: 400,
                                            child: GridView.count(
                                              crossAxisSpacing: 0.5,
                                              crossAxisCount: 3,
                                              children: List.generate(12, (index) {
                                                return numberButton((index + 1).toString());
                                              }),
                                            ),
                                      ),
                                    ),
                                    CustomButton(
                                        width: 328,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(left: 15, right: 15),
                                        onTap: () {
                                          if (formKey.currentState!.validate()) {
                                            Get.toNamed(AppRoutes.sendLinkUSDScreen + '?amount=${controller.formValue.value}');
                                          }
                                        },
                                    ),
                                  ],
                                ),
                              )
                            ]
                        )
                    )
                )
            )
        )
    );
  }
  CustomButton numberButton(String number) {
    switch (number) {
      case "10": number = "."; break;
      case "11": number = "0"; break;
      case "12": number = "del"; break;
      default: number = number; break;
    }
    return CustomButton(
      shape: ButtonShape.Square,
      variant: ButtonVariant.FillWhiteA700,
      text: number,
      fontStyle: ButtonFontStyle.InterMedium16Black90060,
      onTap: () {
        if (number == "del") {
          controller.formValue.value = controller.formValue.value.substring(0, controller.formValue.value.length - 1);
        }
        else {
          controller.formValue.value += number.toString();
        }
        textEditController.text = controller.formValue.value;
      },
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