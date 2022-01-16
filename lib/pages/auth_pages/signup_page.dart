import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 90.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Bazaar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 26.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // TextFormField(
                      //   keyboardAppearance: Brightness.dark,
                      //   decoration: InputDecoration(
                      //     hintText: "Full Name",
                      //     fillColor: Colors.white,
                      //     prefixIcon: Icon(
                      //       Icons.person_outline,
                      //       color: Colors.white70,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     hintText: "Phone Number",
                      //     fillColor: Colors.white,
                      //     prefixIcon: Icon(
                      //       Icons.phone,
                      //       color: Colors.white70,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white70,
                            ),
                            suffix: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white70,
                            )),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          primary: Colors.white,
                          minimumSize: Size(double.infinity, 50.0),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.blue, fontSize: 20.0),
                        ),
                      ),
                    ],
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
