import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageView extends StatelessWidget {
  final String svgPath;
  final double? height;
  final double? width;


  SvgImageView({
    required this.svgPath,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: SvgPicture.asset(
        svgPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
