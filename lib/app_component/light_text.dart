import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app_const/app_color.dart';

class LightText extends StatefulWidget {
  final String title;
  final Color? textcolor;
  final double? fontsize;

  const LightText(
      {super.key,
      required this.title,
      this.textcolor = AppColor.grey2C2F24,
      this.fontsize = 16.0});

  @override
  State<LightText> createState() => _LightTextState();
}

class _LightTextState extends State<LightText> {
  @override
  Widget build(BuildContext context) {
    return Text(
        widget.title,
        style: GoogleFonts.dmSans(
            fontSize: widget.fontsize,
            fontWeight: FontWeight.w400,
            color: widget.textcolor),
    );
  }
}
