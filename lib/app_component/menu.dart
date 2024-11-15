import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';

class Menu extends StatefulWidget {
  final String image;
  final String price;
  final String title;
  final String des;

  const Menu(
      {super.key,
      required this.image,
      required this.price,
      required this.title,
      required this.des});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 287,
      height: 380,
      decoration: BoxDecoration(
        color: AppColor.whiteFFFFFFF,
        border: Border.all(
          width: 2,
          color: AppColor.black000000.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(08.0),
      ),
      child: Column(
        children: [
          Container(
            width: 307,
            height: 200,
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 236,
            height: 142,
            child: Column(
              children: [
                BoldText(
                  title: "\$ ${widget.price}",
                  fontsize: 24,
                  textcolor: AppColor.redAD343E,
                ),
                SizedBox(
                  height: 05.3,
                ),
                BoldText(
                  title: widget.title,
                  fontsize: 20,
                ),
                SizedBox(
                  height: 05.3,
                ),
                LightText(
                  title: widget.des,
                  fontsize: 16.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
