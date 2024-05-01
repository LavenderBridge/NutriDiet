import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/CustomBottomBarController.dart';
import 'package:diet_app/controllers/FoodCardController.dart';
import 'package:diet_app/data_processing/SupabaseStream.dart';
import 'package:diet_app/pages/OverviewPage.dart';
import 'package:diet_app/pages/RecommendationPage.dart';
import 'package:diet_app/statics.dart';
import 'package:diet_app/widgets/CustomBottomBar.dart';
import 'package:diet_app/widgets/CustomBottomBar2.dart';
import 'package:diet_app/widgets/FoodCard.dart';
import 'package:diet_app/widgets/OptionButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _bottomBarController = Get.put(CustomBottomBarController());
  final _cardControler = Get.put(FoodCardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back!", style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 12
                  ),),
                Text(
                  [
                    "NutriDiet",
                    "Recommendations",
                    "Custom Meal",
                    "Saved Dishes",
                    "Your Profile"
                  ][_bottomBarController.currentIndex.value],
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
        backgroundColor: appBackgroundColor,
        elevation: 5,
      ),
      backgroundColor: appBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Obx(
            () {
              return [
                OverviewPage(),
                RecommendationPage(),
                SupabaseStream(),
                // Placeholder(
                //   color: Colors.red,
                // ),
                Placeholder(
                  color: Colors.red,
                ),
                Placeholder(
                  color: Colors.red,
                ),
              ][_bottomBarController.currentIndex.value];
            },
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: appBackgroundColor,
        child: ListView(
          children: [
            Container(
              color: sliderBackgroundColor,
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Menu",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
            OptionButton(text: "Profile", prefixIcon: Icons.person),
            OptionButton(text: "Profile", prefixIcon: Icons.person),
            OptionButton(text: "Settings", prefixIcon: Icons.settings)
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: CustomBottomBar2(),
      // bottomNavigationBar: CustomBottomBar2(),
    );
  }
}
