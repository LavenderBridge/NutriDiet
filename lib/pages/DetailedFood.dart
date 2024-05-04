import 'package:diet_app/components/TopBar_DetailedFoodPage.dart';
import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/statics.dart';
import 'package:diet_app/widgets/FoodCard.dart';
import 'package:diet_app/widgets/FoodCard_DetailedFoodPage.dart';
import 'package:diet_app/widgets/IngredientsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedFood extends StatelessWidget {
  final int index;
  final String title;
  const DetailedFood({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    print(index);
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TopBar_DetailedFoodPage(),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 60, height: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                      child: Text(
                        "150 of 300 Calories",
                        style: GoogleFonts.quicksand(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                FoodCard_DetailedFoodPage(
                  bgImage: bgImageList[index],
                  title: recommendationTitles[index],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "Ingredients",
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 30,
                          // height: 1,
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.orange,
                      width: MediaQuery.of(context).size.height,
                      // height: 90,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ingredients.length,
                        // scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IngredientsCard(title: ingredients[index]),
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange,
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 4,
                  color: Colors.black.withOpacity(0.1))
            ]),
        width: 180,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Meal Successfully Added"),
                duration: Duration(seconds: 2),
              ),
            );
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Add Meal",
                style: GoogleFonts.montserrat(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
