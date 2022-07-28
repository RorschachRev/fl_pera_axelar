import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.padding, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(8),
        width: getHorizontalSize(56),
        toggleSize: 8,
        borderRadius: getHorizontalSize(
          4.00,
        ),
        activeColor: ColorConstant.gray100,
        activeToggleColor: ColorConstant.blueA400,
        inactiveColor: ColorConstant.gray100,
        inactiveToggleColor: ColorConstant.blueA400,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
