import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';

class Testimonial extends StatefulWidget {
  final String title;
  final String reveiw;
  final String Image;
  final String name;
  final String location;

  const Testimonial(
      {super.key,
      required this.title,
      required this.reveiw,
      required this.Image,
      required this.name,
      required this.location});

  @override
  State<Testimonial> createState() => _TestimonialState();
}

class _TestimonialState extends State<Testimonial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColor.whiteF9F9F7,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BoldText(
              title: "\"${widget.title}\"",
              fontsize: 24.0,
              textcolor: AppColor.redAD343E,
            ),
            SizedBox(
              height: 24.0,
            ),
            LightText(
              title:
                  widget.reveiw,
              fontsize: 14.0,
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              thickness: 2,
              color: AppColor.greyDBDFD0,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  child: Image.asset(widget.Image),
                ),
                SizedBox(width: 20.0,),
                Column(
                  children: [
                    BoldText(
                      title: widget.name,
                      fontsize: 16,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LightText(
                      title:widget.location,
                      fontsize: 16,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
