import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';

class SmallBlog extends StatefulWidget {
  final String image;
  final String text;
  final String des;

  const SmallBlog(
      {super.key,
        required this.image,
        required this.text,
        required this.des});

  @override
  State<SmallBlog> createState() => _SmallBlogState();
}

class _SmallBlogState extends State<SmallBlog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 330,
      decoration: BoxDecoration(
          color: AppColor.whiteFFFFFFF,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black, offset: Offset(0, 2), blurRadius: 10.0)
          ]),
      child: Column(
        children: [
          Container(
            width: 320,
            height: 200,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.red,
            ),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Center(
                child: LightText(
              title: widget.text,
              fontsize: 14,
            )),
          ),
          SizedBox(
            height: 10.0,
          ),
          BoldText(
            title: widget.des,
            fontsize: 18,
          ),
        ],
      ),
    );
  }
}
