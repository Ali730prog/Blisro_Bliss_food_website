import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/browse_our_menu.dart';
import 'package:untitled/app_component/common_button.dart';
import 'package:untitled/app_component/footer.dart';
import 'package:untitled/app_component/header.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_component/menu.dart';
import 'package:untitled/app_component/play_fair_text.dart';
import 'package:untitled/app_component/testimonial.dart';
import 'package:untitled/app_component/unique_services.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';
import 'package:untitled/secreen/book.dart';

import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 10.0,),

            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAssets.herosection),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PlayFairText(
                          text: "Best food for",
                          textcolor: AppColor.black000000,
                          fontsize: 70,
                        ),
                        PlayFairText(
                          text: "Your taste",
                          textcolor: AppColor.black000000,
                          fontsize: 70,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        LightText(
                            title:
                                "Discover delectable cuisine and unforgettable moments"),
                        LightText(title: "in our welcoming, culinary haven."),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Book()));
                              },
                              child: CommonButton(
                                title: "Book A Table",
                                textcolor: AppColor.whiteFFFFFFF,
                                bgcolor: AppColor.redAD343E,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu_Screen()));
                              },
                              child: CommonButton(
                                title: "Explore Menu",
                                bordercolor: AppColor.black000000,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 570,
                    decoration: BoxDecoration(color: AppColor.whiteFFFFFFF),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        PlayFairText(text: "Browse Our Menu"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BrowseOurMenu(
                                image: "${AppAssets.breakfast}",
                                title: "Breakfast",
                                des:
                                    "In the new era of technology we look in the future with certainty and pride for our life."),
                            BrowseOurMenu(
                                image: "${AppAssets.main_dishes}",
                                title: "Main Dishes",
                                des:
                                    "In the new era of technology we look in the future with certainty and pride for our life."),
                            BrowseOurMenu(
                                image: "${AppAssets.drinks}",
                                title: "Drinks",
                                des:
                                    "In the new era of technology we look in the future with certainty and pride for our life."),
                            BrowseOurMenu(
                                image: "${AppAssets.dessert}",
                                title: "Dessert",
                                des:
                                    "In the new era of technology we look in the future with certainty and pride for our life.")
                          ],
                        ),
                      ],
                    ),
                  ),
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
                                  image:
                                      AssetImage("${AppAssets.healthy_menu}"))),
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
                                  text:
                                      "We provide healthy food for your family.",
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
                    height: 664,
                    color: AppColor.whiteFFFFFFF,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 50, top: 50, bottom: 20.0, right: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlayFairText(
                            text: "WE also offer unique",
                            fontsize: 40,
                          ),
                          PlayFairText(
                            text: "Services for your events",
                            fontsize: 40,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UniqueServices(
                                  image: "${AppAssets.caterings}",
                                  title: "Caterings",
                                  des:
                                      "In the new era of technology we look in the future with certainty for life."),
                              UniqueServices(
                                  image: "${AppAssets.birthday}",
                                  title: "Birthday",
                                  des:
                                      "In the new era of technology we look in the future with certainty for life."),
                              UniqueServices(
                                  image: "${AppAssets.wedding}",
                                  title: "Wedding",
                                  des:
                                      "In the new era of technology we look in the future with certainty for life."),
                              UniqueServices(
                                  image: "${AppAssets.event}",
                                  title: "Events",
                                  des:
                                      "In the new era of technology we look in the future with certainty for life."),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  // UniqueServices(image: "${AppAssets.caterings}", title: "Caterings", des: "In the new era of technology we look in the future with certainty for life.")
                ],
              ),
            ),
            Container(
              height: 600,
              width: double.infinity,
              color: AppColor.whiteF9F9F7,
              child: Row(
                children: [
                  Container(
                    height: 650,
                    width: 800,
                    child: Row(
                      children: [
                        Container(
                          height: 550,
                          width: 450,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${AppAssets.chef}",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 33.0,
                            ),
                            Container(
                              width: 240,
                              height: 250,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    "${AppAssets.salad}",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              height: 33.0,
                            ),
                            Container(
                              width: 240,
                              height: 250,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    "${AppAssets.chicken}",
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PlayFairText(
                          text: "Fasted Food",
                          fontsize: 50,
                        ),
                        PlayFairText(
                          text: "Delivery In City",
                          fontsize: 50,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        LightText(
                          title:
                              "Our visual designer lets you quickly and of drag a down \nyour way to customapps for both keep desktop. ",
                          fontsize: 16,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("${AppAssets.clock}"),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            BoldText(
                              title: "Delivery within 30 minutes",
                              fontsize: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("${AppAssets.offer}"),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            BoldText(
                              title: "Best Offer & Prices",
                              fontsize: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("${AppAssets.cart}"),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            BoldText(
                              title: "Online Services Available",
                              fontsize: 20,
                            )
                          ],
                        ),
                      ],
                    ),
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100,vertical: 70),
              width: double.infinity,
              height: 900,
              color: AppColor.whiteF9F9F7,
              child: Column(
                children: [
                  Row(
                    children: [
                      PlayFairText(text: "Our Blog & Articles"),
                      Spacer(),
                      CommonButton(title: "Read All Articles",bgcolor: AppColor.redAD343E,textcolor: AppColor.whiteFFFFFFF,),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(

                        width: 450,
                        height: 650,
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Image.asset("${AppAssets.burger}",width: 450,height: 400,fit: BoxFit.cover,)),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                color: AppColor.whiteFFFFFFF,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20.0,),
                                    LightText(title: "January 3, 2023"),
                                    SizedBox(height: 20.0,),
                                    BoldText(title: "The secret tips & tricks to prepare a perfect burger & pizza for our customers",fontsize: 15,),
                                    SizedBox(height: 20.0,),
                                    LightText(title: "Lorem ipsum dolor sit amet consectetur of a adipiscing elitilmim semper adipiscing massa gravida nisi cras enim quis nibholm varius amet gravida ut facilisis neque egestas."),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                       child: Column(

                         children: [
                           SizedBox(width: 30,),
                           Container(
                             child: Row(
                               children: [
                                 Container(
                                   width: 280,
                                   height: 290,
                                   child: Column(
                                     children: [
                                       ClipRRect(
                                           borderRadius: BorderRadius.circular(13),
                                           child: Image.asset("${AppAssets.chips}",width: 306,height: 200,fit: BoxFit.cover,)),
                                       Expanded(
                                         child: Container(
                                           padding: EdgeInsets.symmetric(horizontal: 20.0),
                                           color: AppColor.whiteFFFFFFF,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             children: [
                                               SizedBox(height: 10.0,),
                                               LightText(title: "January 3, 2023"),
                                               SizedBox(height: 10.0,),
                                               BoldText(title: "How to prepare the perfect french fries in an air fryer",fontsize: 15,),

                                             ],
                                           ),
                                         ),
                                       )

                                     ],
                                   ),
                                 ),
                                 SizedBox(width: 30,),
                                 Container(
                                   width: 280,
                                   height: 290,
                                   child: Column(
                                     children: [
                                       ClipRRect(
                                           borderRadius: BorderRadius.circular(13),
                                           child: Image.asset("${AppAssets.chicken}",width: 306,height: 200,fit: BoxFit.cover,)),
                                       Expanded(
                                         child: Container(
                                           padding: EdgeInsets.symmetric(horizontal: 20.0),
                                           color: AppColor.whiteFFFFFFF,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             children: [
                                               SizedBox(height: 10.0,),
                                               LightText(title: "January 3, 2023"),
                                               SizedBox(height: 10.0,),
                                               BoldText(title: "How to prepare delicious chicken tenders",fontsize: 15,),

                                             ],
                                           ),
                                         ),
                                       )

                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20.0,),
                           SizedBox(width: 30,),
                           Container(
                             child: Row(
                               children: [
                                 Container(
                                   width: 280,
                                   height: 290,
                                   child: Column(
                                     children: [
                                       ClipRRect(
                                           borderRadius: BorderRadius.circular(13),
                                           child: Image.asset("${AppAssets.cup_Cake}",width: 306,height: 200,fit: BoxFit.cover,)),
                                       Expanded(
                                         child: Container(
                                           padding: EdgeInsets.symmetric(horizontal: 20.0),
                                           color: AppColor.whiteFFFFFFF,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             children: [
                                               SizedBox(height: 10.0,),
                                               LightText(title: "January 3, 2023"),
                                               SizedBox(height: 10.0,),
                                               BoldText(title: "7 delicious cheesecake recipes you can prepare",fontsize: 15,),

                                             ],
                                           ),
                                         ),
                                       )

                                     ],
                                   ),
                                 ),
                                 SizedBox(width: 30,),
                                 Container(
                                   width: 280,
                                   height: 290,
                                   child: Column(
                                     children: [
                                       ClipRRect(
                                           borderRadius: BorderRadius.circular(13),
                                           child: Image.asset("${AppAssets.pizza}",width: 306,height: 200,fit: BoxFit.cover,)),
                                       Expanded(
                                         child: Container(
                                           padding: EdgeInsets.symmetric(horizontal: 20.0),
                                           color: AppColor.whiteFFFFFFF,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             children: [
                                               SizedBox(height: 10.0,),
                                               LightText(title: "January 3, 2023"),
                                               SizedBox(height: 10.0,),
                                               BoldText(title: "5 great pizza restaurants you should visit this city",fontsize: 15,),

                                             ],
                                           ),
                                         ),
                                       )

                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     )

                    ],
                  )
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
