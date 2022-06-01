import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui3/constants.dart';
import 'package:ui3/screens/homePage.dart';
import 'package:ui3/screens/signUp.dart';
import 'package:ui3/widget/custombutton.dart';
import 'package:ui3/widget/inputButton.dart';
import 'package:ui3/widget/space.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SizedBox(
        width: media.width,
        height: media.height,
        child: Stack(
          children: [
            Positioned(
              top: -31,
              child: Image.asset(
                'img/logobg.png',
                width: 390,
                height: 249,
              ),
            ),
            Positioned(
              top: 170,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                width: 315,
                height: media.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FontText(
                      text: 'Welcome Back! ',
                      color: kTextColor,
                      size: kFontSize20,
                      weight: FontWeight.w600,
                    ),
                    SpaceV(vertical: 10),
                    FontText(
                      text: 'Pay Smarter\nwith Us',
                      color: kMainColor,
                      size: kFontSize36,
                      weight: FontWeight.w700,
                      height: 1.5,
                    ),
                    SpaceV(vertical: 28),
                    InputButton(icon: Icons.person, hintText: 'Enter Username'),
                    InputButton(icon: Icons.lock, hintText: 'Enter Password'),
                    SpaceV(vertical: 6),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            if (isClicked == false) {
                              isClicked = true;
                            } else {
                              isClicked = false;
                            }
                          }),
                          child: Container(
                            width: 19,
                            height: 19,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: kInputTextColor,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(3),
                              color: isClicked ? kSubMainColor : kWhiteColor,
                            ),
                            child: isClicked
                                ? const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: kBlackColor,
                                      size: 15,
                                    ),
                                  )
                                : Container(),
                          ),
                        ),
                        SpaceH(horizontal: 6),
                        FontText(
                            text: 'Save my Password',
                            color: kTextColor,
                            size: kFontSize12,
                            weight: FontWeight.w400),
                        const Spacer(),
                        FontText(
                            text: 'Forget Password?',
                            color: kMainColor,
                            size: kFontSize12,
                            weight: FontWeight.w400),
                      ],
                    ),
                    SpaceV(vertical: 30),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen())),
                      child: CustomButton(
                          text: 'Sign in',
                          fontColor: kWhiteColor,
                          width: 315,
                          height: 51,
                          boxColor: kMainColor),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 36,
                left: 63,
                right: 63,
                child: Text.rich(
                  TextSpan(
                    text: 'Don’t have an account yet? ',
                    style: GoogleFonts.poppins(
                        color: kTextColor,
                        fontSize: kFontSize14,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage())),
                        text: 'Sign Up',
                        style: GoogleFonts.poppins(
                            color: kMainColor,
                            fontSize: kFontSize14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
