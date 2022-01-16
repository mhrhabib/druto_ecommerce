import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  var isDark = false;

  void changeTheme(state) {
    if (state == true) {
      isDark = true;
      Get.changeTheme(ThemeData.dark());
    } else {
      isDark = false;
      Get.changeTheme(ThemeData.light());
    }
    update();
  }
}
