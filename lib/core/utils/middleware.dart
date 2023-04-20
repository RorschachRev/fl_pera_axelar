import 'package:flutter/material.dart';
import '../app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.getBool('hasLoggedIn') == null) await _prefs.setBool('hasLoggedIn', false);
    var checkLoggedIn = _prefs.getBool('hasLoggedIn');
    if (checkLoggedIn!) {
      print("YES");
      return GetNavConfig.fromRoute(AppRoutes.mainScreen);
    } else {
      return GetNavConfig.fromRoute(AppRoutes.welcomeScreen);
    }
  }
}
