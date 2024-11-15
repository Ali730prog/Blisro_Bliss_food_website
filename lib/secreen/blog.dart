import 'package:flutter/material.dart';
import 'package:untitled/app_component/footer.dart';
import 'package:untitled/app_component/header.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_component/play_fair_text.dart';
import 'package:untitled/app_component/small_blog.dart';
import 'package:untitled/app_const/app_assets.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    int blog_check=2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(),
              SizedBox(height: 10.0,),
              Center(
                  child: PlayFairText(
                text: "Our Blog & Articles",
                fontsize: 60,
              )),
              SizedBox(
                height: 20.0,
              ),
              Center(
                  child: LightText(
                      title:
                          "We consider all the drivers of change gives you the components you need ")),
              Center(
                  child:
                      LightText(title: "to change to create a truly happens.")),
              SizedBox(
                height: 30.0,
              ),
              GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                mainAxisSpacing: 20
                ),

                shrinkWrap: true,
                children: [
                  SmallBlog(
                      image: "${AppAssets.blog_1}",
                      text: "January 3,2023",
                      des: "How to prepare a delicious gluten free sushi"),
                  SmallBlog(
                      image: "${AppAssets.blog_2}",
                      text: "January 3,2023",
                      des: "Exclusive baking lessons from the pastry king"),
                  SmallBlog(image: "${AppAssets.blog_3}", text: "January 3,2023", des: "How to prepare the perfect fries in an air fryer"),
                  SmallBlog(image: "${AppAssets.blog_4}", text: "January 3,2023", des: "How to prepare delicious chicken tenders"),
                  SmallBlog(image: "${AppAssets.blog_5}", text: "January 3,2023", des: "5 great cooking gadgets you can buy to save time"),
                  SmallBlog(image: "${AppAssets.blog_6}", text: "January 3,2023", des: "The secret tips & tricks to prepare a perfect burger"),
                  SmallBlog(image: "${AppAssets.blog_7}", text: "January 3,2023", des: "7 delicious cheesecake recipes you can prepare"),
                  SmallBlog(image: "${AppAssets.blog_8}", text: "January 3,2023", des: "5 great pizza restaurants you should visit this city"),
                  SmallBlog(image: "${AppAssets.blog_9}", text: "January 3,2023", des: "5 great cooking gadgets you can buy to save time"),
                  SmallBlog(image: "${AppAssets.blog_10}", text: "January 3,2023", des: "How to prepare a delicious gluten free sushi"),
                  SmallBlog(image: "${AppAssets.blog_11}", text: "January 3,2023", des: "Top 20 simple and quick desserts for kids"),
                  SmallBlog(image: "${AppAssets.blog_12}", text: "January 3,2023", des: "Top 20 simple and quick desserts for kids"),
                ],
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
