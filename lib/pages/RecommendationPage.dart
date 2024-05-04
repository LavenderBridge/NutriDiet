import 'package:diet_app/pages/DetailedFood.dart';
import 'package:diet_app/statics.dart';
import 'package:diet_app/widgets/FoodCard.dart';
import 'package:diet_app/widgets/FoodCard_DetailedFoodPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendationPage extends StatelessWidget {
  RecommendationPage({super.key});

  final List bgImageList = [
    AssetImage("lib\\assets\\images\\breakfast_bg.jpg"),
    AssetImage("lib\\assets\\images\\lunch_bg.jpg"),
    AssetImage("lib\\assets\\images\\dinner_bg.jpg"),
    AssetImage("lib\\assets\\images\\breakfast_bg.jpg"),
    AssetImage("lib\\assets\\images\\lunch_bg.jpg"),
    AssetImage("lib\\assets\\images\\dinner_bg.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: recommendationTitles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero)),
                    onPressed: () {
                      Get.to(DetailedFood(
                          index: index, title: recommendationTitles[index]));
                    },
                    child: FoodCard(
                      bgImage: bgImageList[index],
                      title: recommendationTitles[index],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
