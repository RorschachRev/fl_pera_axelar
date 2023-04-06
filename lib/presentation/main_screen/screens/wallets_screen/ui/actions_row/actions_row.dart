import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import 'history_container.dart';
import 'receive_container.dart';
import 'send_container.dart';
import 'swap_container.dart';

class ActionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        all: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SendContainer(),
          ReceiveContainer(),
          SwapContainer(),
          HistoryContainer(),
        ],
      ),
    );
  }
}
