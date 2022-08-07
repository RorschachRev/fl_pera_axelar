import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class ProfileOverlayInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            color: ColorConstant.gray103,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Detailed information",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClose,
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
                  child: Text("Hiring status: Looking for work"),
                  padding: EdgeInsets.only(bottom: 5),
                ),
                Padding(
                  child: InformationRow("assets/images/profiles_screen/img_user.svg",
                      "About: ", "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh"),
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
                  child: Text("Contacts"),
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
                      "Education: ", "School of secret agent"),
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                ),
                Padding(
                  child: InformationRow("assets/images/profiles_screen/img_career.svg",
                      "Career", "AWL3"),
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                ),
                Padding(
                  child: InformationRow("assets/images/profiles_screen/img_cv_resume.svg",
                      "CV/Resume", "Agent Smith"),
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                ),
                Divider(
                    color: Colors.grey
                ),
              ],
            ),
          )
        ],
      ),
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
                  TextSpan(text: text_normal)
                ]
            ),
          )
      )
    ],
  );
}