import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:application1/widgets/custom_close_icon.dart';

class SelectProfileRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
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
                                      Get.back();
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
              Text("Select profile"),
              Container(
                decoration: AppDecoration.fillWhiteA700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("From:"),
                    ),
                    Expanded(
                        child: Container(
                          decoration: AppDecoration.outlineBlack9001e.copyWith(
                              borderRadius: BorderRadiusStyle
                                  .roundedBorder8),
                          margin: EdgeInsets.only(right: 20, left: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(user.profile_photo_path),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(user.first_name + " " + user.last_name),
                                  Text("Balance: \$ 100 000"),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Divider(
                  color: Colors.grey
              ),
            ],
          ),
        )
    );
  }

}