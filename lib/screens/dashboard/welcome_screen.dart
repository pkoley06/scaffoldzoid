import 'package:flutter/material.dart';
import 'package:scaffoldzoid/screens/registration/log_in.dart';
import 'package:scaffoldzoid/screens/registration/sign_up.dart';
import 'package:scaffoldzoid/utils/const/app_colors.dart';
import 'package:scaffoldzoid/utils/widgets/navigator.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('asset/pngegg.png'))),
            ),
            Column(
              children: <Widget>[
                // the login button
                MaterialButton(
                  elevation: 5,
                  onPressed: () {
                    navigatorScreen(context, const LogInScreen());
                  },
                  minWidth: double.infinity,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: AppColor.purple),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text("Log In",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),

                // the sign up button
                MaterialButton(
                  elevation: 5,
                  onPressed: () {
                    navigatorScreen(context, const SignUpScreen());
                  },
                  minWidth: double.infinity,
                  height: 50,
                  color: AppColor.purple,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text("Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
