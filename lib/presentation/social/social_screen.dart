import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class SocialScreen extends StatefulWidget {
  SocialScreen(this.page);
  final StatelessWidget page;
  @override
  State<SocialScreen> createState() => _socialScreen(page);
}
class _socialScreen extends State<SocialScreen> {
  _socialScreen(this.page);
  StatelessWidget page;

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}