import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final fontcolor;
  final fontsize;
  final fontweight;
  CustomText({super.key, required this.text, this.fontcolor, this.fontsize, this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: fontcolor,
      fontSize: fontsize,
      fontFamily: GoogleFonts.poppins.toString(),
      fontWeight: fontweight,
    ),);
  }
}
