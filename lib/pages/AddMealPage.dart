import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/SupabaseController.dart';
import 'package:diet_app/widgets/AddMealPage/AddNewPageBlank.dart';
import 'package:diet_app/widgets/AddMealPage/SearchLayout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMealPage extends StatelessWidget {
  AddMealPage({super.key});
  var _dataController = Get.put(SupabaseController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          width: Get.width,
          // height: Get.height,
          // color: Colors.orange,
          child: _dataController.currentMeal.isEmpty
              ? AddNewPageBlank()
              : ShowSelectedMeals()),
    );
  }
}

class ShowSelectedMeals extends StatelessWidget {
  var _dataController = Get.put(SupabaseController());
  ShowSelectedMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          child: Center(
            child: Text(
              "Added Ingredients",
              style: GoogleFonts.montserrat(
                  color: Colors.white.withOpacity(0.6), fontSize: 35),
            ),
          ),
        ),
        Obx(() {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: _dataController.currentMeal.length,
            itemBuilder: (context, index) {
              print("INDEX IS: $index");
              return Card(
                color: sliderBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15.0),
                  child: Text(
                    _dataController.currentMeal.value[index]['Food'],
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            },
          );
        }),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: GoogleFonts.lato(color: Colors.white),
                        ))),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: TextButton(
                    onPressed: () async {
                      return showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: Get.height,
                              decoration: BoxDecoration(
                                color: appBackgroundColor,
                                // boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 4)],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SearchLayout(),
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Add Ingredients",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
