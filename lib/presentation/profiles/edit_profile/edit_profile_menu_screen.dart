import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class EditProfileMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: double.infinity,
            height: size.height,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: SvgImageView(
                            svgPath: ImageConstant.imgArrowleft,
                          )
                      ),
                      Expanded(
                          child: Text("Edit profile", textAlign: TextAlign.center,)
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Get.rootDelegate.toNamed(AppRoutes.editProfileMainScreen);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Main", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Education", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Career", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Divider(
                    color: Colors.grey
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Privacy", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Contacts", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My CV/Resume", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Profile Theme", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {

                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Dialogues theme", style: TextStyle(color: Colors.black),
                        ),
                      )
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}