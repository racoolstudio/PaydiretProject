import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kMainColor = Color(0xff112C91);
const Color kSubMainColor = Color(0xff1AC64C);
const Color kTextColor = Color(0xff717171);
const Color kBlackColor = Color(0xff000000);
const Color kInputTextColor = Color(0xffC4C4C4);
const Color kWhiteColor = Color(0xffffffff);
const double kFontSize36 = 36;
const double kFontSize20 = 20;
const double kFontSize16 = 16;
const double kFontSize14 = 14;
const double kFontSize24 = 24;
const double kFontSize12 = 12;

// ignore: must_be_immutable
class FontText extends StatelessWidget {
  FontText(
      {Key? key,
      required this.text,
      required this.color,
      required this.size,
      required this.weight,
      this.height})
      : super(key: key);
  String text;
  Color color;
  double size;
  FontWeight weight;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color,
          fontSize: size,
          fontWeight: weight,
          height: height ?? 1),
    );
  }
}
