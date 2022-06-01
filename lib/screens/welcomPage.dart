import 'package:flutter/material.dart';
import 'package:ui3/constants.dart';
import 'package:ui3/screens/signInScreen.dart';
import 'package:ui3/screens/signUp.dart';
import 'package:ui3/widget/custombutton.dart';
import 'package:ui3/widget/space.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        children: [
          const Spacer(),
          Image.asset('img/logo.png'),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 29, right: 29, bottom: 21),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage())),
                  child: CustomButton(
                      text: 'Sign In',
                      fontColor: kSubMainColor,
                      width: 151,
                      height: 51,
                      boxColor: kWhiteColor),
                ),
                SpaceH(horizontal: 15),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage())),
                  child: CustomButton(
                      text: 'Sign Up',
                      fontColor: kWhiteColor,
                      width: 151,
                      height: 51,
                      boxColor: kSubMainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
