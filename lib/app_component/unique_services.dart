import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';

class UniqueServices extends StatefulWidget {
  final String image;
  final String title;
  final String des;

  const UniqueServices(
      {super.key,
        required this.image,
        required this.title,
        required this.des});

  @override
  State<UniqueServices> createState() => _UniqueServicesState();
}

class _UniqueServicesState extends State<UniqueServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292,
      height: 444,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 306,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                // color: AppColor.greyDBDFD0
            ),
            child: Image.asset(widget.image,),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: BoldText(
              title:widget.title,
              fontsize: 24,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: LightText(
                title:
            widget.des
            ),
          )
        ],
      ),
    );
  }
}
