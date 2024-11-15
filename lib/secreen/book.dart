
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_component/common_button.dart';
import '../app_component/footer.dart';
import '../app_component/header.dart';
import '../app_component/light_text.dart';
import '../app_component/play_fair_text.dart';
import '../app_const/app_assets.dart';
import '../app_const/app_color.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  // Controller for each text field
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  String? _selectedPerson = '1'; // Default value for Total Persons

  // For Date Picker
  void _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        _dateController.text = "${selectedDate.toLocal()}".split(' ')[0]; // Format as YYYY-MM-DD
      });
    }
  }

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
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              PlayFairText(text: "Book A Table"),
                              LightText(
                                title:
                                "We consider all the drivers of change gives you the components ",
                              ),
                              LightText(
                                title:
                                "you need to change to create a truly happens. ",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 400,
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
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      width: 450,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LightText(title: "Date", fontsize: 25),
                            InkWell(
                              onTap: () {
                                _selectDate(context); // Trigger date picker
                              },
                              child: CustomTextField(
                                hintText: "Select Date",
                                suffixIcon: Icon(Icons.date_range_outlined),
                                controller: _dateController,
                              ),
                            ),
                            SizedBox(height: 10.0),

                            LightText(title: "Name", fontsize: 25),
                            CustomTextField(
                              hintText: "Enter your name",
                              controller: _nameController,
                            ),
                            SizedBox(height: 10.0),
                            SizedBox(height: 15.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(
                                children: [
                                  LightText(title: "Total Persons", fontsize: 25),
                                  SizedBox(width: 40,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1, color: AppColor.black000000),
                                      color: Colors.white,
                                    ),
                                    height: 30,
                                    child: DropdownButton<String>(
                                      value: _selectedPerson,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedPerson = newValue;
                                        });
                                      },
                                      items: List.generate(10, (index) {
                                        return DropdownMenuItem<String>(
                                          value: (index + 1).toString(),
                                          child: Text((index + 1).toString()),
                                        );
                                      }),
                                      underline: Container(), // Removes the underline
                                      icon: Icon(Icons.arrow_drop_down_circle_outlined),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                ],
                              ),
                            ),

                            SizedBox(height: 20.0,),
                            // Book table button
                            InkWell(
                              onTap: () {
                                if (_nameController.text.isNotEmpty &&
                                    _dateController.text.isNotEmpty &&
                                    _selectedPerson != null) {
                                  Get.snackbar(
                                    "Booking Confirmed",
                                    "Your table is successfully booked.",
                                    borderColor: AppColor.black000000,
                                  );
                                } else {
                                  Get.snackbar(
                                    "Error",
                                    "Please fill in all fields.",
                                    borderColor: AppColor.black000000,
                                  );
                                }
                              },
                              child: CommonButton(
                                title: "Book A Table",
                                bgcolor: AppColor.redAD343E,
                                textcolor: AppColor.whiteFFFFFFF,
                                width: 350,
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
            Footer(),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon? suffixIcon;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: AppColor.black000000),
        color: Colors.white,
      ),
      height: 40,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
