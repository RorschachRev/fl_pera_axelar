import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_checkbox.dart';
import 'package:application1/widgets/custom_drop_down.dart';
import 'package:application1/widgets/custom_close_icon.dart';
import 'package:flutter/material.dart';

class RequestPreferencesScreen extends StatefulWidget {
  @override
  State<RequestPreferencesScreen> createState() => _requestPreferencesScreen();
}
class _requestPreferencesScreen extends State<RequestPreferencesScreen> {
  final controller = Get.put(RequestPreferencesController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: getMargin(bottom: 6),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapImgArrowleft();
                                                              },
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 22,
                                                                      top: 18,
                                                                      bottom:
                                                                      18),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleft,
                                                                      height: getVerticalSize(
                                                                          20.00),
                                                                      width: getHorizontalSize(
                                                                          11.00)))),
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  top: 16,
                                                                  bottom:
                                                                  16),
                                                              child: Text(
                                                                  "lbl_request"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: AppStyle
                                                                      .txtInterMedium16
                                                                      .copyWith(
                                                                      letterSpacing:
                                                                      0.16,
                                                                      height:
                                                                      1.50))),
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  top: 21,
                                                                  right: 21,
                                                                  bottom:
                                                                  21),
                                                              child: CustomCloseIcon('/main_screen'),
                                                          )
                                                        ])))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 7,
                                                    right: 18),
                                                child: Text(
                                                    "msg_choose_preferen".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14
                                                        .copyWith(
                                                        letterSpacing: 0.10,
                                                        height: 1.71)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 8,
                                                    right: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Obx(() => Radio(
                                                          value: selectedPreferenceEnum.cheapest,
                                                          groupValue: controller.selectedPreference.value,
                                                          onChanged: (selectedPreferenceEnum? value) {
                                                            controller.selectedPreference.value = value!;
                                                          }
                                                        ),
                                                      ),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 30),
                                                          decoration: AppDecoration
                                                              .fillGray100
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                        16,
                                                                        top: 12,
                                                                        bottom:
                                                                        12),
                                                                    child: Text(
                                                                        "lbl_cheapest"
                                                                            .tr,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle.txtInterMedium16Black900.copyWith(
                                                                            letterSpacing:
                                                                            0.16,
                                                                            height:
                                                                            1.50))),
                                                                Container(
                                                                    height:
                                                                    getSize(
                                                                        20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                        126,
                                                                        top: 14,
                                                                        right:
                                                                        18,
                                                                        bottom:
                                                                        14),
                                                                    decoration:
                                                                    BoxDecoration(
                                                                        color:
                                                                        ColorConstant.black90099)
                                                                )
                                                              ])
                                                      )
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 8,
                                                    right: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Obx(() => Radio(
                                                          value: selectedPreferenceEnum.fastest,
                                                          groupValue: controller.selectedPreference.value,
                                                          onChanged: (selectedPreferenceEnum? value) {
                                                            controller.selectedPreference.value = value!;
                                                          }
                                                        ),
                                                      ),
                                                      CustomDropDown(
                                                          width: 240,
                                                          focusNode:
                                                          FocusNode(),
                                                          icon: Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  right: 22),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgArrowleft)),
                                                          hintText: "lbl_fastest".tr,
                                                          margin: getMargin(
                                                              left: 33),
                                                          items: controller
                                                              .requestPreferencesModelObj
                                                              .value
                                                              .dropdownPreferencesItemList,
                                                          onChanged: (value) {
                                                            controller.onSelected1(value);
                                                          })
                                                    ]
                                                )
                                            )
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 43,
                                                    right: 15),
                                                child: Text(
                                                    "USD",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14
                                                        .copyWith(
                                                        letterSpacing: 0.10,
                                                        height: 1.71)
                                                )
                                            )
                                        ),
                                        GestureDetector(
                                          onTap: ()  {
                                           Get.toNamed(AppRoutes.selectingUSDScreen);
                                          },
                                          child:  Container(
                                            margin: getMargin(right: 14, left: 14),
                                            padding: getPadding(left: 10),
                                            width: double.infinity,
                                            height: 50,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('\$ 0.0'),
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
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 10,
                                                    right: 15),
                                                child: Text(
                                                    "msg_or_select_curre".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14
                                                        .copyWith(
                                                        letterSpacing: 0.10,
                                                        height: 1.71)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Expanded(
                                              child: GestureDetector(
                                                  onTap: () {
                                                    controller.showDropdownFunc();
                                                  },
                                                  child: Container(
                                                  margin: getMargin(right: 14, left: 14),
                                                  height: 50,
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
                                                  child: Obx(
                                                    () => Row(
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(10.0),
                                                        child:  CommonImageView(
                                                            svgPath: controller.currentItemCurrency.value.imageConst,
                                                            height:
                                                            getVerticalSize(
                                                                24.00),
                                                            width:
                                                            getHorizontalSize(
                                                                16.00)
                                                        )
                                                      ),
                                                      Text(
                                                        controller.currentItemCurrency.value.title,
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment: Alignment.centerRight,
                                                            child: Container(
                                                                margin: getMargin(right: 14),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                    ImageConstant.imgArrowdownGray900))
                                                        )
                                                      )
                                                    ],
                                                  ),
                                                  )
                                                )
                                              )
                                            )
                                        ),
                                        Obx( () => Align(
                                          alignment: Alignment.center,
                                          child: Visibility(
                                            visible: controller.showDropdown.value,
                                              child: Column (
                                              children: [
                                                Container(
                                                  margin: getMargin(right: 14, left: 14, top: 14),
                                                  padding: getPadding(left: 10),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Search Currency',
                                                    ),
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
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Container (
                                                    margin: getMargin(left: 14, top: 20),
                                                    child: Text("Best Options"),
                                                  )
                                                ),
                                                Column(
                                                  children: List<GestureDetector>.generate(
                                                      controller.requestPreferencesModelObj.value.dropdownItemList.length, (index) =>
                                                        GestureDetector(
                                                          child: Container (
                                                            color: Colors.white,
                                                            margin: getMargin(top: 10, left: 14, right: 14),
                                                            padding: EdgeInsets.all(3),
                                                              child: Row(
                                                                children: [
                                                                  CommonImageView(
                                                                      svgPath: controller.requestPreferencesModelObj.value.dropdownItemList[index].imageConst,
                                                                      height:
                                                                      getVerticalSize(
                                                                          24.00),
                                                                      width:
                                                                      getHorizontalSize(
                                                                          16.00)
                                                                  ),
                                                                  Expanded(
                                                                      child: Padding(
                                                                        padding: getPadding(left: 14),
                                                                        child: Align(
                                                                          alignment: Alignment.centerLeft,
                                                                          child: Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  controller.requestPreferencesModelObj.value.dropdownItemList[index].title,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                      controller.requestPreferencesModelObj.value.dropdownItemList[index].hint
                                                                                  ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      )
                                                                  ),
                                                                ],
                                                            ),
                                                        ),
                                                        onTap: () {
                                                            controller.onSelected(index);
                                                            controller.canContinue.value = true;
                                                            controller.showDropdownFunc();
                                                          },
                                                      )
                                                  ),
                                                )

                                              ]
                                            ),
                                          )
                                        )),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Obx(() => CustomCheckbox(
                                                alignment: Alignment.center,
                                                text: "msg_notification_on".tr,
                                                iconSize: 18,
                                                value:
                                                controller.checkbox.value,
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 147,
                                                    right: 15),
                                                onChange: (value) {
                                                  controller.checkbox.value =
                                                      value;
                                                }))),
                                        Obx(() =>
                                          (!controller.canContinue.value) ?
                                            CustomButton(
                                              width: 328,
                                              text: "lbl_continue".tr,
                                              margin: getMargin(
                                                  left: 15, top: 17, right: 15),
                                              variant: ButtonVariant.FillGray102,
                                              fontStyle: ButtonFontStyle
                                                  .InterMedium16Black90060,
                                              alignment: Alignment.center,
                                            ) : CustomButton(
                                              width: 328,
                                              text: "lbl_continue".tr,
                                              margin: getMargin(
                                                  left: 15, top: 17, right: 15),
                                              variant: ButtonVariant.FillBlueA400,
                                              fontStyle: ButtonFontStyle.InterMedium16,
                                              alignment: Alignment.center,
                                              onTap: () {
                                                  Get.toNamed(AppRoutes.selectingRequestCurrencyScreen +
                                                      '?currency=${controller.currentItemCurrency.value.title}&imageConst=${controller.currentItemCurrency.value.imageConst}');
                                              },
                                          ),
                                        ),
                                        Container(
                                            height: getVerticalSize(2.00),
                                            width: getHorizontalSize(64.00),
                                            margin: getMargin(
                                                left: 15, top: 48, right: 15),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray500,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        1.00))))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
class RequestPreferencesModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 0,
      title: "ETC",
      hint: "Ethereum",
      imageConst: ImageConstant.imgEthereumBadge,
    ),
    SelectionPopupModel(
      id: 1,
      title: "BTC",
      hint: "Bitcoin",
      imageConst: ImageConstant.imgBitcoinBadge,
    ),
    SelectionPopupModel(
      id: 2,
      title: "USDT",
      hint: "Cosmos",
      imageConst: ImageConstant.imgCosmosBadge,
    )
  ].obs;

  RxList<SelectionPopupModel> dropdownPreferencesItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Fastest",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Public Tx",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Masked Tx",
    ),
    SelectionPopupModel(
      id: 4,
      title: "Privacy required",
    ),
  ].obs;
}
enum selectedPreferenceEnum {cheapest, fastest}
class RequestPreferencesController extends GetxController {
  Rx<RequestPreferencesModel> requestPreferencesModelObj =
      RequestPreferencesModel().obs;
  RxBool checkbox = false.obs;
  RxBool showDropdown = false.obs;
  Rx<selectedPreferenceEnum> selectedPreference = Rx<selectedPreferenceEnum>(selectedPreferenceEnum.cheapest);
  RxBool canContinue = false.obs;
  SelectionPopupModel? selectedPreferenceDropDownValue;
  Rx<SelectionPopupModel> currentItemCurrency = SelectionPopupModel(title: 'Not Chosen').obs;
  @override
  void onInit() {
    super.onInit();
    requestPreferencesModelObj.value.dropdownItemList.forEach((element) {
      if (element.isSelected == true) {
        currentItemCurrency.value = element;
        update();
      }
    });

  }
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  showDropdownFunc() {
    showDropdown.value = !showDropdown.value;
    update();
  }
  onSelected(int value) {
    requestPreferencesModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value) {
        element.isSelected = true;
        currentItemCurrency.value = element;
        update();
      }
    });
    requestPreferencesModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedPreferenceDropDownValue = value as SelectionPopupModel;
    requestPreferencesModelObj.value.dropdownPreferencesItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    requestPreferencesModelObj.value.dropdownPreferencesItemList.refresh();
  }
}