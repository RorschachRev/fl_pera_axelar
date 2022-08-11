import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/main_screen/main_screen.dart';
import 'package:flutter/services.dart';

class FriendListScreen extends StatelessWidget {
  FriendListScreen(this.userProfile);
  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorConstant.whiteA700,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    TextButton(
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowleft,
                      ),
                      onPressed: () {
                        Get.back(result: -1);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Friends",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 15),
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    icon: CommonImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 10),
                child: Text("Your friends", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (int i = 0; i < userProfile.friends.length; i++) Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.back(result: userProfile.friends[i]);
                              },
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(users[userProfile.friends[i]].profile_photo_path),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(users[userProfile.friends[i]].first_name + " " + users[userProfile.friends[i]].last_name,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                                      ),
                                      Text("Online"),
                                    ],
                                  )
                                ],
                              )
                          ),
                          Row(
                            children: [
                              TextButton(
                                child: CommonImageView(svgPath: ImageConstant.imgChatIcon,),
                                onPressed: () {

                                },
                              ),
                              TextButton(
                                  onPressed: () {

                                  },
                                  child: CommonImageView(svgPath: ImageConstant.imgCallIconGray,)
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}