import 'package:flutter/material.dart';
import 'package:ui3/constants.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FontText(
          text: 'Wallet Page',
          color: kTextColor,
          size: kFontSize36,
          weight: FontWeight.w400),
    );
  }
}
