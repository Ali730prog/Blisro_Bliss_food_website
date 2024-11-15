import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_component/common_button.dart';
import '../app_component/footer.dart';
import '../app_component/header.dart';
import '../app_component/light_text.dart';
import '../app_component/play_fair_text.dart';
import '../app_const/app_assets.dart';
import '../app_const/app_color.dart';

final _formKey = GlobalKey<FormState>();
class ContactUS extends StatefulWidget {
  const ContactUS({super.key});

  @override
  State<ContactUS> createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          SizedBox(height: 10.0),
          Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      color: AppColor.whiteF9F9F7,
                      width: double.infinity,
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            PlayFairText(text: "Contact Us"),
                            LightText(title: "We consider all the drivers of change gives you the components"),
                            LightText(title: "you need to change to create a truly happens."),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 900,
                      color: AppColor.whiteFFFFFFF,
                      child: Image.asset(
                        "${AppAssets.map}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 250,
                left: 0,
                right: 0,
                child: Container(
                  width: 300,
                  height: 520,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LightText(title: "Name", fontsize: 25),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1, color: AppColor.black000000),
                                    color: Colors.white,
                                  ),
                                  width: 350,
                                  height: 40,
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter your name",
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(bottom: 10.0)
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter your name";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LightText(title: "Subject", fontsize: 25),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(width: 1, color: AppColor.black000000),
                                  color: Colors.white,
                                ),
                                height: 40,
                                width: 350,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Write a Subject",
                                    enabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(bottom: 10),
                                    focusedBorder: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter a subject";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LightText(title: "Email", fontsize: 25),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(width: 1, color: AppColor.black000000),
                                  color: Colors.white,
                                ),
                                height: 40,
                                width: 350,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your Email",
                                    enabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(bottom: 10),
                                    focusedBorder: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter a subject";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),

                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 10.0),
                           LightText(title: "Message", fontsize: 25),
                           Container(
                             width: 350,
                             padding: EdgeInsets.symmetric(horizontal: 10.0),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               border: Border.all(width: 1, color: AppColor.black000000),
                               color: Colors.white,
                             ),
                             height: 120,
                             child: TextFormField(
                               decoration: InputDecoration(
                                 hintText: "Enter your message",
                                 enabledBorder: InputBorder.none,
                                 focusedBorder: InputBorder.none,
                               ),
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return "Please enter a message";
                                 }
                                 return null;
                               },
                             ),
                           ),
                         ],
                       ),

                          SizedBox(height: 16.0),
                          Center(
                            child: InkWell(
                              onTap: () {
                                if (_formKey.currentState?.validate() ?? false) {
                                  Get.snackbar(
                                    "Success",
                                    "Your message has been submitted",
                                    borderColor: AppColor.black000000,
                                  );
                                }
                              },
                              child: CommonButton(
                                title: "Send",
                                bgcolor: AppColor.redAD343E,
                                textcolor: AppColor.whiteFFFFFFF,
                                width: 300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Footer()
        ],
      ),
    ),
  );
}}
