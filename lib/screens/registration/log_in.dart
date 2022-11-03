import 'package:flutter/material.dart';
import 'package:scaffoldzoid/utils/const/app_colors.dart';
import 'package:scaffoldzoid/utils/widgets/navigator.dart';
import 'package:scaffoldzoid/utils/widgets/text_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Lgin to your account',
                          style: TextStyle(fontSize: 15, color: AppColor.grey),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          textButton(label: "Email"),
                          textButton(label: "Password", obsecureText: true)
                        ],
                      ),
                    ),

                    // Buyer login

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: const EdgeInsets.only(top: 1, left: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50,
                            color: AppColor.purple,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () {},
                            child: const Text(
                              'Buyer Login',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Seller login

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: const EdgeInsets.only(top: 1, left: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50,
                            color: AppColor.cyan,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () {},
                            child: const Text(
                              'Seller Login',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text("Don't have an acount?"),
                        Text(
                          " Sign up",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),

                    // logo
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/juice.png'),
                              fit: BoxFit.fitHeight)),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
