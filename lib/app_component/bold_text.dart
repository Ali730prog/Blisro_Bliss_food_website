import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app_const/app_color.dart';

class BoldText extends StatefulWidget {
  final String title;
  final Color? textcolor;
  final double? fontsize;

  const BoldText({super.key, required this.title,
    this.textcolor=AppColor.black000000,
    this.fontsize=28.0
  });

  @override
  State<BoldText> createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title,style: GoogleFonts.dmSans(
      fontWeight: FontWeight.w600,fontSize: widget.fontsize,color: widget.textcolor
    ),);
  }
}
