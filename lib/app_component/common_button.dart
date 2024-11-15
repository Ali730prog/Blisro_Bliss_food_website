import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_const/app_color.dart';

class CommonButton extends StatefulWidget {
  final String title;
  final double hight;
  final double width;
  final Color? bgcolor;
  final Color? bordercolor;
  final Color textcolor;

  const CommonButton({
    super.key,
    required this.title,
    this.bgcolor,
    this.bordercolor,
    this.textcolor = AppColor.black000000,  this.hight=48,  this.width=148,
  });

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.hight,
      decoration: BoxDecoration(
        color: widget.bgcolor,
        border: Border.all(color: widget.bordercolor ?? Colors.transparent, width: 2),
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Center(
        child: BoldText(
          title: widget.title,
          textcolor: widget.textcolor,
          fontsize: 16,
        ),
      ),
    );
  }
}
