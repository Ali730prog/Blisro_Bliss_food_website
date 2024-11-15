import 'package:flutter/material.dart';
import 'package:untitled/app_component/footer.dart';
import 'package:untitled/app_component/header.dart';
import 'package:untitled/app_component/multi_cuisine.dart';
import 'package:untitled/secreen/home_screen.dart';

import '../app_component/bold_text.dart';
import '../app_component/common_button.dart';
import '../app_component/light_text.dart';
import '../app_component/play_fair_text.dart';
import '../app_component/testimonial.dart';
import '../app_const/app_assets.dart';
import '../app_const/app_color.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int check=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 10.0,),
              Container(
                width: double.infinity,
                height: 600,
                color: AppColor.whiteF9F9F7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage("${AppAssets.healthy_menu}"))),
                      child: Container(
                        margin: EdgeInsets.only(left: 170, top: 230),
                        padding: EdgeInsets.all(20),
                        width: 310,
                        height: 270,
                        decoration: BoxDecoration(
                            color: AppColor.grey474747,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25.0,
                            ),
                            BoldText(
                              title: "Comes and Visit us",
                              fontsize: 18,
                              textcolor: AppColor.whiteF9F9F7,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_sharp,
                                  color: AppColor.whiteFFFFFFF,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                LightText(
                                  title: "(123)_4567_890",
                                  textcolor: AppColor.whiteFFFFFFF,
                                  fontsize: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: AppColor.whiteFFFFFFF,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                LightText(
                                  title: "alideveloper@gmail.com",
                                  textcolor: AppColor.whiteFFFFFFF,
                                  fontsize: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: AppColor.whiteFFFFFFF,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                LightText(
                                  title:
                                      "837 W. Marshall Lane Marshalltown\n, IA 50158, Los Angeles",
                                  textcolor: AppColor.whiteFFFFFFF,
                                  fontsize: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 50),
                        height: 600,
                        width: 450,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            PlayFairText(
                              text: "We provide healthy food for your family.",
                              fontsize: 45,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            BoldText(
                              title:
                                  "Our story began with a vision to create a unique dining experience that merges fine dining, exceptional service, and a vibrant ambiance. Rooted in city's rich culinary culture, we aim to honor our local roots while infusing a global palate.",
                              fontsize: 16.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            LightText(
                                title:
                                    "At place, we believe that dining is not just about food, but also about the overall experience. Our staff, renowned for their warmth and dedication, strives to make every visit an unforgettable event."),
                            SizedBox(
                              height: 50,
                            ),
                            CommonButton(
                              title: "More About us",
                              textcolor: AppColor.black000000,
                              bordercolor: AppColor.black000000,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 730,
                child: Column(
                  children: [
                    Image.asset("assets/images/img_1.png"),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MultiCuisine(
                              image: "${AppAssets.multi_cuisine}",
                              title: "Multi Cuisine",
                              des:
                                  "In the new era of technology we look in the future with certainty life."),
                          MultiCuisine(
                              image: "${AppAssets.ease_to_order}",
                              title: "Easy To Order",
                              des:
                                  "In the new era of technology we look in the future with certainty life."),
                          MultiCuisine(
                              image: "${AppAssets.delvery}",
                              title: "Fast Delivery",
                              des:
                                  "In the new era of technology we look in the future with certainty life."),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: AppColor.whiteF9F9F7,
                width: double.infinity,
                height: 740,
                child: Row(
                  children: [
                    Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlayFairText(text: "A little information \nfor our valuable guest",fontsize: 50,),
                          SizedBox(height: 15.0,),
                          LightText(title: "At place, we believe that dining is not just about food, but also about the \noverall experience. Our staff, renowned for their warmth and dedication, \nstrives to make every visit an unforgettable event.",fontsize: 15,),
                          SizedBox(height: 40.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 190,
                                height: 150,
                                color: AppColor.whiteFFFFFFF,
                                child: Column(
                                  children: [
                                    PlayFairText(text: "3"),
                                    LightText(title: "Locations")
                                  ],
                                ),
                              ),
                              SizedBox(width: 30.0,),
                              Container(
                                width: 190,
                                height: 150,
                                color: AppColor.whiteFFFFFFF,
                                child: Column(
                                  children: [
                                    PlayFairText(text: "1995"),
                                    LightText(title: "Founders")
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 190,
                                height: 150,
                                color: AppColor.whiteFFFFFFF,
                                child: Column(
                                  children: [
                                    PlayFairText(text: "65+"),
                                    LightText(title: "Staff Members")
                                  ],
                                ),
                              ),
                              SizedBox(width: 30.0,),
                              Container(
                                width: 190,
                                height: 150,
                                color: AppColor.whiteFFFFFFF,
                                child: Column(
                                  children: [
                                    PlayFairText(text: "100%"),
                                    LightText(title: "Satisfied Customer")
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 555,
                      height: 580,
                      child: Image.asset("${AppAssets.waiter}",fit: BoxFit.cover,),
                    ),

                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 630,
                color: AppColor.whiteFFFFFFF,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                          child: PlayFairText(
                            text: "What Our Customers Say",
                            fontsize: 50,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Testimonial(
                              title: "The best restaurant",
                              reveiw:
                              "Last night, we dined at place and were simply blown away. From the moment we stepped in, we were enveloped in an inviting atmosphere and greeted with warm smiles and it is very best place for the people .",
                              Image: "${AppAssets.testimonial_1}",
                              name: "Sophire Robson",
                              location: "Los Angeles, CA"),
                          Testimonial(
                              title: "Simply delicious",
                              reveiw:
                              "Place exceeded my expectations on all fronts. The ambiance was cozy and relaxed, making it a perfect venue for our anniversary dinner. Each dish was prepared and beautifully presented.",
                              Image: "${AppAssets.testimonial_2}",
                              name: "Matt Cannon",
                              location: "San Diego, CA"),
                          Testimonial(
                              title: "One of a kind restaurant",
                              reveiw:
                              "The culinary experience at place is first to none. The atmosphere is vibrant, the food - nothing short of extraordinary. The food was the highlight of our evening. Highly recommended.",
                              Image: "${AppAssets.testimonial_3}",
                              name: "Andy Smith",
                              location: "San Francisco, CA"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
