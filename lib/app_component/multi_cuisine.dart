import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';

class MultiCuisine extends StatefulWidget {
  final String image;
  final String title;
  final String des;

  const MultiCuisine(
      {super.key,
        required this.image,
        required this.title,
        required this.des});

  @override
  State<MultiCuisine> createState() => _MultiCuisineState();
}

class _MultiCuisineState extends State<MultiCuisine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            child: Image.asset(widget.image),
          ),
          SizedBox(
            width: 24.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BoldText(
                title: widget.title,
                fontsize: 20,
              ),
              SizedBox(
                height: 08.0,
              ),
              Container(
                width: 294,
                height: 55,
                child: LightText(
                  title:
                      widget.des,
                  fontsize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
