import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';
import 'package:untitled/secreen/about.dart';
import 'package:untitled/secreen/blog.dart';
import 'package:untitled/secreen/contact.dart';
import 'package:untitled/secreen/home_screen.dart';
import 'package:untitled/secreen/menu.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40,left: 50,right: 50),
      width: 1600,
      height: 578,
      color: AppColor.grey474747,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 46,
                            width: 293,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('${AppAssets.web_white_logo}'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Bistro Bliss",
                                  style: GoogleFonts.playfairDisplay(
                                      color: AppColor.whiteFFFFFFF,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30),
                                )
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    LightText(
                      title:
                          "In the new era of technology we look a \nin the future with certainty and pride to\n for our company and.",
                      fontsize: 13,
                      textcolor: AppColor.greyADB29E,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(AppAssets.twitter),
                        ),
                        SizedBox(
                          width: 05,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(AppAssets.facebook),
                        ),
                        SizedBox(
                          width: 05,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(AppAssets.instagram),
                        ),
                        SizedBox(
                          width: 05,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(AppAssets.git_hub),
                        ),
                        SizedBox(
                          width: 05,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                width: 102,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BoldText(
                      title: "Pages",
                      textcolor: AppColor.whiteFFFFFFF,
                      fontsize: 16,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: LightText(
                        title: "Home",
                        textcolor: AppColor.greyADB29E.withOpacity(0.8),
                        fontsize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                      },
                      child: LightText(
                        title: "About",
                        textcolor: AppColor.greyADB29E.withOpacity(0.8),
                        fontsize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu_Screen()));
                      },
                      child: LightText(
                        title: "Menu",
                        textcolor: AppColor.greyADB29E.withOpacity(0.8),
                        fontsize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: LightText(
                        title: "Pricing",
                        textcolor: AppColor.greyADB29E.withOpacity(0.8),
                        fontsize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Blog()));
                      },
                      child: LightText(
                        title: "Blog",
                        textcolor: AppColor.greyADB29E.withOpacity(0.8),
                        fontsize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUS()));
                      },
                      child: LightText(
                        title: "Contact",
                        textcolor: AppColor.greyADB29E.withOpacity(0.8),
                        fontsize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "Delivery",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 108.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BoldText(
                      title: "Utility Pages",
                      textcolor: AppColor.whiteFFFFFFF,
                      fontsize: 16,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    LightText(
                      title: "Start Here",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "Style Guide",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "Password Protect",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "404 Not Found",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "Licenses",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "Changelog",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LightText(
                      title: "View More",
                      textcolor: AppColor.greyADB29E.withOpacity(0.8),
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.0,),
                    BoldText(
                      title: "Follow Us On Instagram",
                      textcolor: AppColor.whiteFFFFFFF,
                      fontsize: 16,
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 194,
                          height: 170,
                          child: Image.asset(AppAssets.fotter_image_1),
                        ),
                        SizedBox(width: 15),

                        Container(
                          width: 194,
                          height: 170,
                          child: Image.asset(AppAssets.fotter_image_2),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),

                    Row(
                    children: [
                      Container(
                        width: 194,
                        height: 170,
                        child: Image.asset(AppAssets.fotter_image_3),
                      ),
                      SizedBox(width: 15),

                      Container(
                        width: 194,
                        height: 170,
                        child: Image.asset(AppAssets.fotter_image_4),
                      ),
                    ],
                  )

                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              LightText(title: "Copyright © 2024 AH Coder. All Rights Reserved",textcolor: AppColor.whiteFFFFFFF,),
              Spacer(),
              Row(
                children: [
                  LightText(title: "Make by the ",textcolor: AppColor.redAD343E),
                  BoldText(title: "  @Ali Hasnain",textcolor: AppColor.whiteFFFFFFF,fontsize: 20.0,),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
