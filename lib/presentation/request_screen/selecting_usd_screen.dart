import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SelectingUSDScreen extends StatelessWidget {
  final controller = Get.put(SelectingAnAmountCurrencyOneController());
  final formKey = GlobalKey<FormState>();
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
                                    CustomTextFormField(
                                      width: 328,
                                      focusNode: FocusNode(),
                                      margin: getMargin(left: 15, top: 32, right: 15),
                                      textInputAction: TextInputAction.done,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter value';
                                        }
                                        if (double.tryParse(value) == null) {
                                          return 'Enter only numbers';
                                        }
                                        controller.formValue.value = double.parse(value);
                                        return null;
                                      },
                                    ),
                                    CustomButton(
                                        width: 328,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(left: 15, top: 24, right: 15),
                                        onTap: () {
                                          if (formKey.currentState!.validate()) {
                                            Get.back(result: controller.formValue.value);
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

  onTapImgArrowleft() {
    Get.back();
  }
}
class SelectingAnAmountCurrencyOneController extends GetxController {
  RxDouble formValue = (0.0).obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}