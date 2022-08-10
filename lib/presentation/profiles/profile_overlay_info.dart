import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class ProfileOverlayInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                color: ColorConstant.gray103,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Detailed information",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    TextButton(
                      child: CommonImageView(
                        svgPath: ImageConstant.imgClose,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      child: RichText(
                        text: TextSpan(
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(text: "Hiring status: ", style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                              TextSpan(text: user.hiring_status.name)
                            ]
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 5),
                    ),
                    Padding(
                      child: InformationRow("assets/images/profiles_screen/img_user.svg",
                          "About: ", user.about_me),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Padding(
                      child: InformationRow("assets/images/img_users.svg",
                          "Followers: ", "362"),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Divider(
                        color: Colors.grey
                    ),
                    Padding(
                      child: Text("Contacts", style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Padding(
                      child: InformationRow("assets/images/profiles_screen/img_telegram_logo.svg",
                          "Telegram: ", "ag_smith"),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Padding(
                      child: InformationRow("assets/images/profiles_screen/img_email.svg",
                          "E-mail: ", "ag_smith@gmail.com"),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Divider(
                        color: Colors.grey
                    ),
                    Padding(
                      child: InformationRow("assets/images/profiles_screen/img_education.svg",
                          "Education: ", user.education),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Padding(
                      child: InformationRow("assets/images/profiles_screen/img_career.svg",
                          "Career: ", user.career),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Padding(
                      child: InformationRow("assets/images/profiles_screen/img_cv_resume.svg",
                          "CV/Resume: ", "Agent Smith"),
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Divider(
                        color: Colors.grey
                    ),
                    InfoItem(ImageConstant.imgUsers, "Friends"),
                    InfoItem(ImageConstant.imgDashboard, "NFT list"),
                    InfoItem(ImageConstant.imgCreditcard, "Wallets")
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
Row InformationRow(String img_path, String text_bold, String text_normal) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CommonImageView(
        svgPath: img_path,
      ),
      Expanded(
          child: RichText(
            text: TextSpan(
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: text_bold, style: TextStyle(
                      fontWeight: FontWeight.bold
                  )),
                  TextSpan(text: text_normal, style: TextStyle(color: ColorConstant.gray900))
                ]
            ),
          )
      )
    ],
  );
}
TextButton InfoItem(String svgPath, String text) {
  return TextButton(
      onPressed: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CommonImageView(
                svgPath: svgPath,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(text, style: TextStyle(fontSize: 18, color: Colors.black),),
              )
            ],
          ),
          CommonImageView(
            svgPath: ImageConstant.imgArrowRightGrey,
          )
        ],
      )
  );
}