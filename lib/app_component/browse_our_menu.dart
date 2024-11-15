import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/common_button.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';

class BrowseOurMenu extends StatefulWidget {
  final String image;
  final String title;
  final String button_text;
  final String des;
  final Function? ontap;

  const BrowseOurMenu(
      {super.key,
      required this.image,
      required this.title,
      required this.des,
      this.ontap,
      this.button_text = "Explore Menu"});

  @override
  State<BrowseOurMenu> createState() => _BrowseOurMenuState();
}

class _BrowseOurMenuState extends State<BrowseOurMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 306,
      height: 365,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: AppColor.grey2C2F24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: AppColor.blue4D592B.withOpacity(0.4),
                  shape: BoxShape.circle),
              child: Center(
                  child: Image.asset(
                widget.image,
                width: 48,
                height: 50,
              )),
            ),
            SizedBox(
              height: 15.0,
            ),
            BoldText(
              title: widget.title,
              fontsize: 24,
            ),
            SizedBox(
              height: 09.0,
            ),
            LightText(title: widget.des),
            SizedBox(
              height: 20.0,
            ),
            CommonButton(
              title: widget.button_text,

         textcolor: AppColor.redAD343E,
            )
          ],
        ),
      ),
    );
  }
}
