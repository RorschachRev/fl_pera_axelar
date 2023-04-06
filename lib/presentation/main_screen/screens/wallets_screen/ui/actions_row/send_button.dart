import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../../../sending_screen/sending_screen.dart';

class SendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        left: 2,
        right: 2,
      ),
      padding: EdgeInsets.all(2),
      child: ElevatedButton(
        child: CommonImageView(
          svgPath: ImageConstant.imgArrowRight,
        ),
        onPressed: () {
          Get.to(() => SendingScreen(users[user.friends[0]]));
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(52, 52)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }
}
