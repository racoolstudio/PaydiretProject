import 'package:flutter/widgets.dart';

import '../constants.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FontText(
          text: 'History Page',
          color: kTextColor,
          size: kFontSize36,
          weight: FontWeight.w400),
    );
  }
}
