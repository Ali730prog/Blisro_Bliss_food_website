import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/app_component/play_fair_text.dart';

import '../app_const/app_assets.dart';
import '../app_const/app_color.dart';
import '../secreen/about.dart';
import '../secreen/articial.dart';
import '../secreen/book.dart';
import '../secreen/contact.dart';
import '../secreen/controller.dart';
import '../secreen/home_screen.dart';
import '../secreen/menu.dart';
import 'bold_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.find();

    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 50,
            child: Image.asset(
              "${AppAssets.weblogo}",
              fit: BoxFit.cover,
            ),
          ),
          // Brand Name
          InkWell(
            onTap: () {
              navigationController.updateIndex(1);
              Get.to(() => HomeScreen());
            },
            child: PlayFairText(
              text: "Blisro Bliss",
              fontsize: 40,
            ),
          ),
          SizedBox(width: 140),
          buildMenuButton(context, "Home", 1, navigationController),
          SizedBox(width: 30),
          buildMenuButton(context, "About", 2, navigationController),
          SizedBox(width: 30),
          buildMenuButton(context, "Contact Us", 3, navigationController),
          SizedBox(width: 30),
          buildMenuButton(context, "Menu", 4, navigationController),
          SizedBox(width: 30),
          buildMenuButton(context, "Pages", 5, navigationController),
          SizedBox(width: 30),
          buildMenuButton(context, "Book", 6, navigationController),
        ],
      ),
    );
  }

  Widget buildMenuButton(BuildContext context, String title, int index, NavigationController navigationController) {
    return Obx(() {
      return InkWell(
        onTap: () {
          try {
            navigationController.updateIndex(index);
            switch (title) {
              case "About":
                Get.to(() => About());
                break;
              case "Contact Us":
                Get.to(() => ContactUS());
                break;
              case "Menu":
                Get.to(() => Menu_Screen());
                break;
              case "Pages":
                Get.to(() => Articial());
                break;
              case "Book A Table":
                Get.to(() => Book());
                break;
              default:
                Get.to(() => HomeScreen());
            }
          } catch (e) {
            print("Error in onTap handler: $e");
            Get.snackbar("Navigation Error", "An error occurred while navigating.");
          }
        },
        child: Container(
          width: 100,
          height: 34,
          decoration: navigationController.selectedIndex.value == index
              ? BoxDecoration(
            color: AppColor.redAD343E,
            borderRadius: BorderRadius.circular(50.0),
          )
              : null,
          child: Center(
            child: BoldText(
              title: title,
              fontsize: 20,
            ),
          ),
        ),
      );
    });
  }
}
