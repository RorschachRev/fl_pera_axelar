import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class EditProfileMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: CommonImageView(
                          svgPath: ImageConstant.imgArrowleft,
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offAllNamed(AppRoutes.mainScreen);
                        },
                        child: CommonImageView(
                          svgPath: ImageConstant.imgClose,
                        )
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: ColorConstant.blueA400,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(user.profile_photo_path),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                    color: ColorConstant.gray103,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Change profile photo")
                    ],
                  ),
                )
              ),

            ],
          ),
        )
    );
  }
}