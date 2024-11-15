import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
   bool _ishover=false;

  void _hover(bool ishover){
    setState(() {
      _ishover=ishover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              MouseRegion(
                onHover: (_)=>_hover(true),
                onExit: (_)=>_hover(false),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Text("Do not touch",style: TextStyle(
                    color: _ishover?Colors.red:Colors.orange
                  ),),
                ),


              )
            ],
          ),
        ),
      ),
    );
  }
}
