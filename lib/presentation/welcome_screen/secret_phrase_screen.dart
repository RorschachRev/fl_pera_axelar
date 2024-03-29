import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_switch.dart';
import 'package:application1/widgets/custom_close_icon.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:application1/core/crypto/secret_phrase.dart';

class SecretPhraseScreen extends GetWidget<SecretPhraseController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                            controller.obx((state) =>
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
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child:  ElevatedButton(
                      child: Text('Continue'),
                      onPressed: () async {
                        final SharedPreferences _prefs = await SharedPreferences.getInstance();
                        await _prefs.setBool('hasLoggedIn', true);
                        Get.offAllNamed(AppRoutes.mainScreen);
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
class SecretPhraseController extends GetxController with StateMixin<SecretPhraseModel> {
  TextEditingController headlineSecretController = TextEditingController();

  Rx<SecretPhraseModel> secretPhraseModelObj = SecretPhraseModel().obs;

  RxBool isSelectedSwitch = false.obs;

  void PrintSecretPhrase(String phrase) {
    print(phrase);
  }

  @override
  void onInit() async {
    await secretPhraseModelObj.value.onReady();
    change(null, status: RxStatus.success());
    super.onInit();
  }
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
  Rx<String> secretPhraseTxt = Rx('');

  RxBool isSelected = false.obs;
  SecretPhraseItemModel(String name) {
    this.secretPhraseTxt = name.obs;
  }
}
class SecretPhraseModel {
  RxList<SecretPhraseItemModel> secretPhraseItemList = new RxList<SecretPhraseItemModel>();
  Future<void> onReady() async {
    secretPhraseItemList.assignAll((await MnemonicPhrase().GenerateSecretPhrase()).map((element) =>
        SecretPhraseItemModel(element)
    ).toList().obs);
  }
}

class SecretPhraseItemWidget extends StatelessWidget {
  SecretPhraseItemWidget(this.secretphraseItemModelObj);
  final controller = Get.put(SecretPhraseController());
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
            if (value == true) {
              controller.PrintSecretPhrase(secretphraseItemModelObj.secretPhraseTxt.toString());
            }
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