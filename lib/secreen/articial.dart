import 'package:flutter/material.dart';
import 'package:untitled/app_component/bold_text.dart';
import 'package:untitled/app_component/footer.dart';
import 'package:untitled/app_component/header.dart';
import 'package:untitled/app_component/light_text.dart';
import 'package:untitled/app_component/play_fair_text.dart';
import 'package:untitled/app_const/app_assets.dart';

import '../app_component/small_blog.dart';

class Articial extends StatefulWidget {
  const Articial({super.key});

  @override
  State<Articial> createState() => _ArticialState();
}

class _ArticialState extends State<Articial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: PlayFairText(
                            text: "The secret tips & tricks to prepare a ")),
                    Center(
                        child: PlayFairText(
                            text: "perfect burger & pizza for our customers")),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 900,
                      height: 400,
                      child: Center(
                          child: Image.asset(
                        "${AppAssets.artical_1}",
                        fit: BoxFit.cover,
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BoldText(
                        title:
                            "What do you need to prepare a home-made burger?"),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Creating the perfect burger and pizza is an art, combining ingredients, techniques, and passion to craft dishes that truly delight the palate. Today, we'll unveil some closely guarded secrets and insider tips for mastering these beloved staples of the culinary world."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Quality Beef: The heart of a perfect burger is top-notch beef. Opt for fresh, high-quality ground beef with a fat content of about 20% for the juiciest, most flavorful results."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Seasoning: Simplicity is key here. A generous pinch of salt and black pepper just before cooking will enhance the beef's natural flavors without overshadowing them."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Don’t Overwork the Meat: When forming your patties, be gentle. Overworking the meat can lead to dense, tough burgers. You want a patty that's firm enough to hold together, but not compressed."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Cooking: High heat is crucial. Whether you're grilling or pan-searing, make sure your cooking surface is hot enough to form a nice crust on the patty, sealing in those delicious juices."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Resting: Allow your cooked burgers to rest for a few minutes before serving. This lets the juices redistribute throughout the patty, ensuring a moist and flavorful bite."),
                    SizedBox(
                      height: 20.0,
                    ),
                    BoldText(
                        title:
                            "What are the right ingredients to make it delicious?"),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Creating the perfect burger and pizza is an art, combining ingredients, techniques, and passion to craft dishes that truly delight the palate. Today, we'll unveil some closely guarded secrets and insider tips for mastering these beloved staples of the culinary world."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Quality Beef: The heart of a perfect burger is top-notch beef. Opt for fresh, high-quality ground beef with a fat content of about 20% for the juiciest, most flavorful results."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Seasoning: Simplicity is key here. A generous pinch of salt and black pepper just before cooking will enhance the beef's natural flavors without overshadowing them."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Don’t Overwork the Meat: When forming your patties, be gentle. Overworking the meat can lead to dense, tough burgers. You want a patty that's firm enough to hold together, but not compressed."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Cooking: High heat is crucial. Whether you're grilling or pan-searing, make sure your cooking surface is hot enough to form a nice crust on the patty, sealing in those delicious juices."),
                    SizedBox(
                      height: 10.0,
                    ),
                    LightText(
                        title:
                            "Resting: Allow your cooked burgers to rest for a few minutes before serving. This lets the juices redistribute throughout the patty, ensuring a moist and flavorful bite."),
                    Container(
                      width: 900,
                      height: 400,
                      child: Center(
                          child: Image.asset(
                        "${AppAssets.artical_2}",
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      width: double.infinity,
                      height: 550,
                      child: Column(
                        children: [
                          PlayFairText(text: "Read More Articles"),
                          SizedBox(
                            height: 10.0,
                          ),
                          LightText(
                              title:
                                  "We consider all the drivers of change gives you the components you need"),
                          LightText(
                              title: "to change to create a truly happens."),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SmallBlog(
                                  image: "${AppAssets.blog_1}",
                                  text: "January 3,2023",
                                  des:
                                      "How to prepare a delicious gluten free sushi"),
                              SmallBlog(
                                  image: "${AppAssets.blog_2}",
                                  text: "January 3,2023",
                                  des:
                                      "Exclusive baking lessons from the pastry king"),
                              SmallBlog(
                                  image: "${AppAssets.blog_3}",
                                  text: "January 3,2023",
                                  des:
                                      "How to prepare the perfect fries in an air fryer"),
                              SmallBlog(
                                  image: "${AppAssets.blog_4}",
                                  text: "January 3,2023",
                                  des:
                                      "How to prepare delicious chicken tenders"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
