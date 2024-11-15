import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/common_button.dart';
import 'package:untitled/app_component/footer.dart';
import 'package:untitled/app_component/header.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_component/menu.dart';
import 'package:untitled/app_component/play_fair_text.dart';
import 'package:untitled/app_const/app_assets.dart';
import 'package:untitled/app_const/app_color.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      child: Column(children: [
        Header(),
        SizedBox(height: 10.0,),
        Center(child: PlayFairText(text: "Our Menu")),
        SizedBox(
          height: 20.0,
        ),
        LightText(
            title:
                "We consider all the drivers of change gives you the components \nyou need to change to create a truly happens."),
        SizedBox(
          height: 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonButton(
              title: "All",
              bgcolor: AppColor.redAD343E,
              textcolor: AppColor.whiteFFFFFFF,
              width: 100,
            ),
            SizedBox(
              width: 20,
            ),
            CommonButton(
              title: "Breakfast",
              bordercolor: AppColor.grey474747,
              bgcolor: AppColor.whiteF9F9F7,
            ),
            SizedBox(
              width: 20,
            ),
            CommonButton(
              title: "Main Dishes",
              bordercolor: AppColor.grey474747,
              bgcolor: AppColor.whiteF9F9F7,
            ),
            SizedBox(
              width: 20,
            ),
            CommonButton(
              title: "Drinks",
              bordercolor: AppColor.grey474747,
              bgcolor: AppColor.whiteF9F9F7,
            ),
            SizedBox(
              width: 20,
            ),
            CommonButton(
              title: "Desserts",
              bordercolor: AppColor.grey474747,
              bgcolor: AppColor.whiteF9F9F7,
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          width: double.infinity,
          height: 800,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Menu(
                      image: "${AppAssets.menu_1}",
                      price: "9.99",
                      title: "Fried Eggs",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                  Menu(
                      image: "${AppAssets.menu_2}",
                      price: "15.99",
                      title: "Hawaiian Pizza",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                  Menu(
                      image: "${AppAssets.menu_3}",
                      price: "7.25",
                      title: "Martinez Cocktail",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                  Menu(
                      image: "${AppAssets.menu_3}",
                      price: "20.99",
                      title: "Butterscotch Cake",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Menu(
                      image: "${AppAssets.menu_5}",
                      price: "5.89",
                      title: "Mint Lemonade",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                  Menu(
                      image: "${AppAssets.menu_6}",
                      price: "18.05",
                      title: "Chocolate Icecream",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                  Menu(
                      image: "${AppAssets.menu_7}",
                      price: "12.25",
                      title: "Cheese Burger",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                  Menu(
                      image: "${AppAssets.menu_8}",
                      price: "12.99",
                      title: "Classic Waffles",
                      des:
                          "Made with eggs, lettuce, salt, oil and other ingredients."),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: AppColor.whiteF9F9F7,
          width: 1600,
          height: 450,
          child: Row(
            children: [
              Container(
                width: 446,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayFairText(text: "You can Order"),
                    PlayFairText(text: "through apps"),
                    LightText(
                      title:
                          "Lorem ipsum dolor sit amet consectetur \nadipiscing elit enim bibendum sed et aliquet \naliquet risus tempor semper.",
                      fontsize: 15,
                    )
                  ],
                ),
              ),
              Container(
                width: 800,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.uber_eat}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.grubhub}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.postmates}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.door_dash}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.foodpanda}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.deliveroo}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.instacart}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.just_eat}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFFF,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            "${AppAssets.didi_food}",
                            width: 180,
                            height: 40,
                            fit: BoxFit.contain,
                          )),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Footer()
      ]),
    )));
  }
}
