// import 'package:diet_app/statics.dart';
import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/FoodCardController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard_DetailedFoodPage extends StatelessWidget {
  final AssetImage bgImage;
  // final int cardIndex;
  final String title;

  FoodCard_DetailedFoodPage(
      {super.key, required this.bgImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: bgImage, fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  width: 150,
                  height: 65,
                  decoration: BoxDecoration(
                      color: sliderBackgroundColor.withOpacity(1),
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      Text(
                        "8:00 am",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
