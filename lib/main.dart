import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/secreen/home_screen.dart';
import 'secreen/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(NavigationController());

    return GetMaterialApp(
      title: 'Your App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
