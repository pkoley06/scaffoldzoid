import 'package:flutter/material.dart';
import 'package:scaffoldzoid/utils/const/app_colors.dart';
import 'package:scaffoldzoid/utils/widgets/navigator.dart';
import 'package:scaffoldzoid/utils/widgets/text_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: null,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              navigatorScreenPop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: AppColor.cyan,
            )),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sign Up to your account',
                      style: TextStyle(fontSize: 15, color: AppColor.grey),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    textButton(label: "Name"),
                    textButton(label: "Email"),
                    textButton(label: "Password", obsecureText: true),
                    textButton(label: "Confirm password", obsecureText: true),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
