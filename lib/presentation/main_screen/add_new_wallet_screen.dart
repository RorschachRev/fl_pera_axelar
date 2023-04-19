import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AddNewWalletScreen extends StatelessWidget {
  final controller = Get.put(AddNewWalletController());
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
                                                          getVerticalSize(
                                                              20.00),
                                                          width: getHorizontalSize(
                                                              11.00)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 81,
                                                      top: 16,
                                                      right: 115,
                                                      bottom: 16),
                                                  child: Text(
                                                      "Add new wallet",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign
                                                          .center,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                          letterSpacing: 0.16,
                                                          height: 1.50)))
                                            ]
                                        )
                                    )
                                )
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: getMargin(right: 10),
                                  child: Text("Select a chain"),
                                ),
                                Obx(() =>
                                    DropdownButton<String>(
                                      value: controller.currentChainItem.value,
                                      items: chains.map((String item) =>
                                          DropdownMenuItem<String>(child: Text(item), value: item,)
                                      ).toList(),
                                      onChanged: (String? newValue) {
                                        controller.currentChainItem.value = newValue!;
                                      },
                                    ),
                                ),
                              ],
                            ),
                            Text("Use existing Private Key?"),
                            Row(
                              children: [
                                Obx(() => Radio(
                                    value: selectedPrivateKey.existing,
                                    groupValue: controller.currentPrivateKey.value,
                                    onChanged: (selectedPrivateKey? value) {
                                      controller.currentPrivateKey.value = value!;
                                    }
                                  ),
                                ),
                                Text("From existing local wallet")
                              ],
                            ),
                            Row(
                              children: [
                                Obx(() => Radio(
                                    value: selectedPrivateKey.import,
                                    groupValue: controller.currentPrivateKey.value,
                                    onChanged: (selectedPrivateKey? value) {
                                      controller.currentPrivateKey.value = value!;
                                    }
                                ),
                                ),
                                Text("Import From Mnemonic Phrase")
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            child: Text('Create'),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {

                              }
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  Size(double.infinity, 40)),
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
enum selectedPrivateKey {existing, import}
class AddNewWalletController extends GetxController {
  RxString currentChainItem = chains[0].obs;
  Rx<selectedPrivateKey> currentPrivateKey = Rx<selectedPrivateKey>(selectedPrivateKey.existing);
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}