import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  double? height;

  CustomText({
    super.key,
    this.color,
    this.height,
    this.fontWeight,
    this.size,
    this.textAlign,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.playfairDisplay().copyWith(
        height: height,
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
