import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.text,
      required this.fontColor,
      required this.width,
      required this.height,
      required this.boxColor,
      this.borderColor})
      : super(key: key);
  String text;
  double width;
  double height;
  Color fontColor;
  Color boxColor;
  Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: borderColor == null ? boxColor : borderColor!,
            width: 1,
            style: BorderStyle.solid),
        color: boxColor,
      ),
      child: Center(
          child: FontText(
              text: text,
              color: fontColor,
              size: kFontSize14,
              weight: FontWeight.w400)),
    );
  }
}
