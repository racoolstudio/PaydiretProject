import 'package:flutter/material.dart';

import '../constants.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FontText(
          text: 'More Page',
          color: kTextColor,
          size: kFontSize36,
          weight: FontWeight.w400),
    );
  }
}
