import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_switch.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:application1/widgets/custom_close_icon.dart';
import 'package:flutter/material.dart';

class SecretPhraseScreen extends GetWidget<SecretPhraseController> {
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
                      decoration: AppDecoration.fillWhiteA700,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 21,
                              top: 21,
                              bottom: 21,
                            ),
                            child: CustomCloseIcon('/welcome_screen'),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 73,
                              top: 24,
                              right: 76,
                              bottom: 24,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    8.00,
                                  ),
                                  width: getHorizontalSize(
                                    56.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueA400,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Obx(
                                      () => CustomSwitch(
                                    padding: getPadding(
                                      left: 4,
                                    ),
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    },
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    8.00,
                                  ),
                                  width: getHorizontalSize(
                                    56.00,
                                  ),
                                  margin: getMargin(
                                    left: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 17,
                        right: 16,
                      ),
                      child: Text(
                        "msg_protect_your_wa".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold24.copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 16,
                      top: 20,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          width: 312,
                          focusNode: FocusNode(),
                          controller: controller.headlineSecretController,
                          hintText: "msg_your_secret_phr".tr,
                          margin: getMargin(
                            left: 8,
                          ),
                          variant: TextFormFieldVariant.UnderLineBlack9001e,
                          padding: TextFormFieldPadding.PaddingB6,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                        ),
                        Wrap(
                          children: List<Widget>.generate(
                              controller.secretPhraseModelObj.value
                                  .secretPhraseItemList.length, (index) {
                            SecretPhraseItemModel model = controller
                                .secretPhraseModelObj
                                .value
                                .secretPhraseItemList[index];
                            return SecretPhraseItemWidget(model);
                          }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      328.00,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 20,
                      right: 16,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_what_is_a_secre2".tr,
                            style: TextStyle(
                              color: ColorConstant.black900Dd,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.16,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: " ".tr,
                            style: TextStyle(
                              color: ColorConstant.black90099,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.16,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_morbi_tempus_ia".tr,
                            style: TextStyle(
                              color: ColorConstant.black900Dd,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.16,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 16,
                      top: 8,
                      right: 16,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            20.00,
                          ),
                          width: getSize(
                            20.00,
                          ),
                          margin: getMargin(
                            left: 10,
                            top: 10,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray900,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: getHorizontalSize(
                              312.00,
                            ),
                            margin: getMargin(
                              left: 8,
                              top: 10,
                              right: 8,
                              bottom: 8,
                            ),
                            child: Text(
                              "msg_this_is_the_onl".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style:
                              AppStyle.txtInterMedium14Black90099.copyWith(
                                letterSpacing: 0.14,
                                height: 1.71,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 328,
                    text: "lbl_continue".tr,
                    margin: getMargin(
                      left: 16,
                      top: 66,
                      right: 16,
                    ),
                    onTap: () {
                      Get.offAllNamed(AppRoutes.mainScreen);
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 26,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              2.00,
                            ),
                            width: getHorizontalSize(
                              64.00,
                            ),
                            margin: getMargin(
                              left: 148,
                              top: 8,
                              right: 148,
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class SecretPhraseController extends GetxController {
  TextEditingController headlineSecretController = TextEditingController();

  Rx<SecretPhraseModel> secretPhraseModelObj = SecretPhraseModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    headlineSecretController.dispose();
  }
}

class SecretPhraseItemModel {
  Rx<String> secretPhraseTxt = Rx('Life');

  RxBool isSelected = false.obs;
}
class SecretPhraseModel {
  RxList<SecretPhraseItemModel> secretPhraseItemList =
    RxList.generate(12, (index) => SecretPhraseItemModel());
}

class SecretPhraseItemWidget extends StatelessWidget {
  SecretPhraseItemWidget(this.secretphraseItemModelObj);

  SecretPhraseItemModel secretphraseItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Padding(
        padding: getPadding(
          right: 5,
          bottom: 5,
        ),
        child: ChoiceChip(
          label: Text(
            secretphraseItemModelObj.secretPhraseTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.black900Dd,
              fontSize: getFontSize(
                14,
              ),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          selected: secretphraseItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.fromHex("#33000000"),
          shape: secretphraseItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
            side: BorderSide(
              color: ColorConstant.fromHex("#ff197aff"),
              width: getHorizontalSize(
                1.00,
              ),
            ),
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          )
              : RoundedRectangleBorder(
            side: BorderSide(
              color: ColorConstant.fromHex("#ff197aff"),
              width: getHorizontalSize(
                1.50,
              ),
            ),
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          onSelected: (value) {
            secretphraseItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
class SecretPhraseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecretPhraseController());
  }
}