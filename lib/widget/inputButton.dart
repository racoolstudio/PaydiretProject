import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class InputButton extends StatelessWidget {
  InputButton({required this.icon, required this.hintText});
  IconData icon;
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: const BoxDecoration(),
      child: TextField(
        cursorColor: kBlackColor,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color(0xffE5E5E5), width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(
              icon,
              color: kInputTextColor,
              size: 18,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                color: kInputTextColor,
                fontSize: kFontSize14,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
