import 'package:flutter/material.dart';
import 'package:untitled/app_const/app_assets.dart';
main(){
runApp(Image1());
}
class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child:
          Column(
            children: [
              Hero(tag: "image", child: Image.asset("${AppAssets.menu_1}"))
            ],
          ),
        ),
      ),
    );
  }
}
