// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui3/constants.dart';
import 'package:ui3/screens/historyPage.dart';
import 'package:ui3/screens/morePage.dart';
import 'package:ui3/screens/walletPage.dart';
import 'package:ui3/widget/custombutton.dart';
import 'package:ui3/widget/space.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List pages = [
    const HomePage(),
    const WalletPage(),
    const HistoryPage(),
    const MorePage()
  ];
  int currentIndex = 0;
  void OnPressed(int Index) {
    setState(() {
      currentIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: kWhiteColor,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: OnPressed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          unselectedItemColor: kTextColor,
          selectedItemColor: kMainColor,
          selectedLabelStyle: GoogleFonts.poppins(
            color: kMainColor,
            fontSize: kFontSize14,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            color: kInputTextColor,
            fontSize: kFontSize14,
            fontWeight: FontWeight.w400,
          ),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                ),
                label: 'More'),
          ]),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: kSubMainColor,
                radius: 18,
                child: Image.asset(
                  'img/ninja.png',
                  height: 20,
                  width: 20,
                ),
              ),
              SpaceH(horizontal: 6),
              FontText(
                  text: 'Hello Sarah,',
                  color: kBlackColor,
                  size: kFontSize14,
                  weight: FontWeight.w600)
            ],
          ),
          SpaceV(vertical: 27),
          Container(
            width: 315,
            height: 129,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kMainColor,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                  left: 27, right: 27, top: 34, bottom: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FontText(
                          text: 'Balance',
                          color: kWhiteColor,
                          size: kFontSize16,
                          weight: FontWeight.w400),
                      SpaceV(vertical: 10),
                      FontText(
                          text: isVisible ? 'N250,000' : '********',
                          color: kWhiteColor,
                          size: kFontSize24,
                          weight: FontWeight.w700)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        if (isVisible == true) {
                          isVisible = false;
                        } else {
                          isVisible = true;
                        }
                      }),
                      child: Icon(
                        isVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: kWhiteColor.withOpacity(0.5),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SpaceV(vertical: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  text: 'Deposit',
                  fontColor: kBlackColor,
                  width: 149,
                  height: 57,
                  boxColor: kSubMainColor),
              CustomButton(
                text: 'Withdraw',
                fontColor: kBlackColor,
                width: 149,
                height: 57,
                boxColor: kWhiteColor,
                borderColor: kSubMainColor,
              )
            ],
          ),
          SpaceV(vertical: 16),
          CustomButton(
              text: 'Buy/Sell Crypto here',
              fontColor: kWhiteColor,
              width: 313,
              height: 115,
              boxColor: kBlackColor),
          SpaceV(vertical: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'Pay bills',
                fontColor: kTextColor,
                width: 149,
                height: 57,
                boxColor: kWhiteColor,
                borderColor: kInputTextColor,
              ),
              CustomButton(
                text: 'Buy Aritime',
                fontColor: kTextColor,
                width: 149,
                height: 57,
                boxColor: kWhiteColor,
                borderColor: kInputTextColor,
              )
            ],
          ),
          SpaceV(vertical: 27),
          FontText(
              text: 'Recent Transaction',
              color: kTextColor,
              size: kFontSize14,
              weight: FontWeight.w400),
          SpaceV(vertical: 26),
          Center(
              child: FontText(
                  text: 'Nothing Yet!',
                  color: kInputTextColor,
                  size: kFontSize12,
                  weight: FontWeight.w400)),
        ],
      ),
    );
  }
}
