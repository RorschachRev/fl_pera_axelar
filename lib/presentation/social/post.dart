import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class PostElement extends StatefulWidget {
  @override
  State<PostElement> createState() => _postElement();
}
class _postElement extends State<PostElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      margin: EdgeInsets.only(top:10),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          image: AssetImage(user.profile_photo_path),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Agent Smith"),
                            SvgImageView(
                              svgPath: ImageConstant.imgCheckmark,
                            )
                          ],
                        ),
                        Text("07/20/2022  15:43"),
                      ],
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {

                  },
                  child: SvgImageView(
                    svgPath: ImageConstant.imgMore,
                  )
              ),
            ],
          ),
          Text("Check out my new NFT I've just bought!"),
          // SvgImageView(
          //   svgPath: 'assets/images/test_image.svg',
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: size.width / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.gray101,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        padding: EdgeInsets.all(3),
                        child: Row(
                          children: [
                            SvgImageView(
                              svgPath: ImageConstant.imgSocialHeart,
                            ),
                            Text("402"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.gray101,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        padding: EdgeInsets.all(3),
                        child: Row(
                          children: [
                            SvgImageView(
                              svgPath: ImageConstant.imgSocialComment,
                            ),
                            Text("57"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.gray101,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        padding: EdgeInsets.all(3),
                        child: Row(
                          children: [
                            SvgImageView(
                              svgPath: ImageConstant.imgSocialRepost,
                            ),
                            Text("64"),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorConstant.gray101,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                padding: EdgeInsets.all(3),
                child: Row(
                  children: [
                    SvgImageView(
                      svgPath: ImageConstant.imgSocialVisibility,
                    ),
                    Text("1026"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}