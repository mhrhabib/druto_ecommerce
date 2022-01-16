import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TakeLook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 90.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "DoCommerce",
                  style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Image.asset('assets/images/login.png'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: Size(300.0, 50.0),
                  ),
                  onPressed: () {
                    Get.toNamed('/MainView');
                  },
                  child: Text(
                    "Take a Look",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300.0, 50.0),
                    elevation: 0.0,
                  ),
                  onPressed: () {
                    Get.toNamed("/SignInPage");
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.blue, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
