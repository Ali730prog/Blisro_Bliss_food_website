import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app_const/app_color.dart';

class PlayFairText extends StatefulWidget {
  final double fontsize;
  final String text;
  final Color textcolor;

  const PlayFairText(
      {super.key,
      this.fontsize = 55,
      required this.text,
      this.textcolor = AppColor.black000000});

  @override
  State<PlayFairText> createState() => _PlayFairTextState();
}

class _PlayFairTextState extends State<PlayFairText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.playfairDisplay(
          color: widget.textcolor,
          fontSize: widget.fontsize,
          fontWeight: FontWeight.w600),
    );
  }
}
