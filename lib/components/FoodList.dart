import 'package:diet_app/controllers/CustomBottomBarController.dart';
import 'package:diet_app/controllers/FoodCardController.dart';
import 'package:diet_app/statics.dart';
import 'package:diet_app/widgets/FoodCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodList extends StatelessWidget {
  FoodList({super.key});

    final _cardControler = Get.put(FoodCardController());
    final _bottomBarController = Get.put(CustomBottomBarController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bgImageList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
            onPressed: () {Get.toNamed('/detailedfood', arguments: [index]);},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: FoodCard(
              bgImage: bgImageList[index],
              title: homeTitles[index],
            ),
          ),
        );
      },
    );
  }
}
