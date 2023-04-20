import 'package:application1/presentation/profiles/other_user_profile.dart';
import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/social/post.dart';
import 'package:application1/presentation/main_screen/main_screen.dart';
import 'package:application1/presentation/profiles/friend_list_screen.dart';
import 'package:application1/presentation/sending_screen/sending_screen.dart';

class ProfileScreen extends MainScreen {
  ProfileScreen(this.userProfile);
  final UserProfile userProfile;
  List<int> GetUserFriends() {
    if (userProfile.friends.length < 5) return userProfile.friends;
    return userProfile.friends.sublist(0, 5);
  }
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
                                    image: AssetImage(userProfile.profile_photo_path),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(userProfile.first_name + " " + userProfile.last_name, style: TextStyle(fontSize: 25),),
                                    SvgImageView(
                                      svgPath: 'assets/images/profiles_screen/img_check.svg',
                                    ),
                                  ],
                                ),
                                Text(userProfile.hiring_status.name, style: TextStyle(fontSize: 16, color: ColorConstant.gray501),),
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
                              Get.rootDelegate.toNamed(AppRoutes.editProfileScreen);
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
                          child: TextButton(
                            onPressed: () {

                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgImageView(
                                  svgPath: "assets/images/profiles_screen/edit_square.svg",
                                ),
                                Text("New post"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          )
                        ),
                        Container(
                            height: double.infinity,
                            child: TextButton(
                              onPressed: () {

                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgImageView(
                                    svgPath: "assets/images/profiles_screen/img_add_photo.svg",
                                  ),
                                  Text("Image"),
                                ],
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            )
                        ),
                        Container(
                            height: double.infinity,
                            child: TextButton(
                              onPressed: () {
                                Get.rootDelegate.toNamed(AppRoutes.requestPreferencesScreen);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgImageView(
                                    svgPath: ImageConstant.imgArrowDown,
                                  ),
                                  Text("Receive"),
                                ],
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            )
                        ),
                        Container(
                            height: double.infinity,
                            child: TextButton(
                              onPressed: () {
                                Get.to(() => SendingScreen(users[user.friends[0]]));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgImageView(
                                    svgPath: ImageConstant.imgArrowRight,
                                  ),
                                  Text("Send"),
                                ],
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            )
                        ),
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
                        SvgImageView(
                          svgPath: 'assets/images/profiles_screen/img_user.svg',
                        ),
                        Text("About", style: TextStyle(color: ColorConstant.blueA400),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3, bottom: 3),
                    child: Text(userProfile.about_me),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3, bottom: 3),
                    child: Row(
                      children: [
                        SvgImageView(
                          svgPath: 'assets/images/profiles_screen/img_education.svg',
                        ),
                        Text("Education: " + userProfile.education, style: TextStyle(color: ColorConstant.blueA400),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3, bottom: 3),
                    child: Row(
                      children: [
                        SvgImageView(
                          svgPath: 'assets/images/profiles_screen/img_career.svg',
                        ),
                        Text("Career: " + userProfile.career, style: TextStyle(color: ColorConstant.blueA400))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3),
                    child: TextButton(
                      child: Row(
                        children: [
                          SvgImageView(
                            svgPath: 'assets/images/profiles_screen/img_info.svg',
                          ),
                          Text("More information", style: TextStyle(color: Colors.black),),
                        ],
                      ),
                      onPressed: () {
                        Get.rootDelegate.toNamed(AppRoutes.profilesOverlayScreen);
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
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Column(
                children: [
                  TextButton(
                      onPressed: () async {
                        int result = await Get.to(() => FriendListScreen(userProfile));
                        if (result != -1) {
                          controller.changePage(OtherUserProfile(users[result]));
                        }
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              children: [
                                Text("Friends "),
                                Text(userProfile.friends.length.toString()),
                              ]
                          ),
                          SvgImageView(
                            svgPath: ImageConstant.imgArrowRightGrey,
                          )
                        ],
                      ),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < GetUserFriends().length; i++) TextButton(
                        onPressed: () {
                          controller.changePage(OtherUserProfile(users[userProfile.friends[i]]));
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(users[userProfile.friends[i]].profile_photo_path),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                            Text(users[userProfile.friends[i]].first_name, style: TextStyle(fontSize: 13, color: Colors.black),),
                            Text(users[userProfile.friends[i]].last_name, style: TextStyle(fontSize: 13, color: Colors.black),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            PostElement(),
          ],
        ),
      );
  }
}