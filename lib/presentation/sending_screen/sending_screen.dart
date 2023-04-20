import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SendingScreen extends StatefulWidget {
  SendingScreen(this.profileToSend);
  final UserProfile profileToSend;
  @override
  State<SendingScreen> createState() => _sendingScreen(profileToSend);
}

class _sendingScreen extends State<SendingScreen> {
  _sendingScreen(this.profileToSend);
  final controller = Get.put(SendingController());
  UserProfile profileToSend;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                height: size.height,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                              width: size.width,
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 22, top: 18, bottom: 18),
                                                child: SvgImageView(
                                                    svgPath:
                                                    ImageConstant.imgArrowleft,
                                                    height: getVerticalSize(20.00),
                                                    width:
                                                    getHorizontalSize(11.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 114,
                                                top: 16,
                                                right: 147,
                                                bottom: 16),
                                            child: Text("lbl_sending".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtInterMedium16
                                                    .copyWith(
                                                    letterSpacing: 0.16,
                                                    height: 1.50)))
                                      ]))),
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
                          Container(
                            decoration: AppDecoration.fillWhiteA700,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 15),
                                  child: Text("To:"),
                                ),
                                Expanded(
                                    child: Container(
                                        decoration: AppDecoration.outlineBlack9001e.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                        margin: EdgeInsets.only(right: 20, left: 20),
                                        child: DropdownButton<UserProfile>(
                                          value: profileToSend,
                                          icon: Expanded (
                                            child: Align(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(right: 10),
                                                  child: SvgImageView(
                                                      svgPath: ImageConstant.imgArrowDownGray,
                                                      height:
                                                      getVerticalSize(7.00),
                                                      width: getHorizontalSize(
                                                          12.00)),
                                                )
                                            ),
                                          ),
                                          items: [for (int i = 0; i < user.friends.length; i++)
                                            DropdownMenuItem<UserProfile> (
                                              value: users[user.friends[i]],
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 40,
                                                    height: 40,
                                                    margin: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          image: AssetImage(users[user.friends[i]].profile_photo_path),
                                                          fit: BoxFit.cover
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(users[user.friends[i]].first_name + " " + users[user.friends[i]].last_name),
                                                      Text("0x...1"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                          onChanged: (UserProfile? userProfile) {
                                            setState(() {
                                              profileToSend = userProfile!;
                                            });
                                          },
                                        )
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              margin: getMargin(top: 7),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 16, right: 16),
                                        child: Text("lbl_recent".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium16Black90099
                                                .copyWith(
                                                letterSpacing: 0.16,
                                                height: 1.50))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin: getMargin(
                                                left: 16, top: 16, right: 16),
                                            decoration: AppDecoration
                                                .outlineBlack9001e
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 8,
                                                          bottom: 8),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  20.00)),
                                                          child: Image.asset(
                                                            ImageConstant.imgPhoto,
                                                            height: getSize(40.00),
                                                            width: getSize(40.00),
                                                          ))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 20,
                                                          bottom: 20),
                                                      child: Text(
                                                          "msg_0xc34281_fr21".tr,
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14Black90099
                                                              .copyWith(
                                                              height: 1.14))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 30,
                                                          top: 23,
                                                          right: 18,
                                                          bottom: 23),
                                                      child: SvgImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmark,
                                                          height:
                                                          getVerticalSize(9.00),
                                                          width: getHorizontalSize(
                                                              12.00)))
                                                ]))),
                                  ])),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child:  ElevatedButton(
                          child: Text('Continue'),
                          onPressed: () {
                            Get.rootDelegate.toNamed(AppRoutes.selectingCurrencyScreen);
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                          ),
                        ),
                      ),
                    ]))
        )
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
class SendingController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
