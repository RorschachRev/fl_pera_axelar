import 'package:flutter/material.dart';

import 'send_button.dart';
import 'send_text.dart';

class SendContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SendButton(),
          SendText(),
        ],
      ),
    );
  }
}
