import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/main_screen/profiles/profile_overlay_info.dart';

class ProfileScreen extends StatelessWidget {
  final controller = Get.put(ProfileScreenController());
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          decoration: AppDecoration.fillGray100,
          child: Column(
            children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profiles_screen/img_bg1.png'),
                        alignment: Alignment.topCenter,
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 80),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/profiles_screen/img_avatar_agent.png'),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Agent Smith", style: TextStyle(fontSize: 25),),
                                          CommonImageView(
                                            svgPath: 'assets/images/profiles_screen/img_check.svg',
                                          ),
                                        ],
                                      ),
                                      Text("Looking for work", style: TextStyle(fontSize: 16, color: ColorConstant.gray501),),
                                      Text("Online", style: TextStyle(fontSize: 14, color: ColorConstant.blueA400),),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(ColorConstant.gray101),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                            color: Colors.grey
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonImageView(
                                      svgPath: "assets/images/profiles_screen/edit_square.svg",
                                    ),
                                    TextButton(
                                      onPressed: () {

                                      },
                                      child: Text("New post"),
                                      style: TextButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.zero,
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonImageView(
                                      svgPath: "assets/images/profiles_screen/img_add_photo.svg",
                                    ),
                                    TextButton(
                                      onPressed: () {

                                      },
                                      child: Text("Image"),
                                      style: TextButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.zero,
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonImageView(
                                      svgPath: ImageConstant.imgArrowDown,
                                    ),
                                    TextButton(
                                      onPressed: () {

                                      },
                                      child: Text("Receive"),
                                      style: TextButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.zero,
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonImageView(
                                      svgPath: ImageConstant.imgArrowRight,
                                    ),
                                    TextButton(
                                      onPressed: () {

                                      },
                                      child: Text("Send"),
                                      style: TextButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.zero,
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                            color: Colors.grey
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              CommonImageView(
                                svgPath: 'assets/images/profiles_screen/img_user.svg',
                              ),
                              Text("About", style: TextStyle(color: ColorConstant.blueA400),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, bottom: 3),
                          child: Text("About text"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              CommonImageView(
                                svgPath: 'assets/images/profiles_screen/img_education.svg',
                              ),
                              Text("Education: School of secret agent", style: TextStyle(color: ColorConstant.blueA400),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              CommonImageView(
                                svgPath: 'assets/images/profiles_screen/img_career.svg',
                              ),
                              Text("Career: AWL3", style: TextStyle(color: ColorConstant.blueA400))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: TextButton(
                            child: Row(
                              children: [
                                CommonImageView(
                                  svgPath: 'assets/images/profiles_screen/img_info.svg',
                                ),
                                Text("More information", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                            onPressed: () {
                              Get.toNamed(AppRoutes.profilesOverlayScreen);
                            },
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}
class ProfileScreenController extends GetxController {
  RxBool profileOverlayVisibility = true.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}