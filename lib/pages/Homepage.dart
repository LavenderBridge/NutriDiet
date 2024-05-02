import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/CustomBottomBarController.dart';
import 'package:diet_app/data_processing/SupabaseStream.dart';
import 'package:diet_app/pages/AddMealPage.dart';
import 'package:diet_app/pages/OverviewPage.dart';
import 'package:diet_app/pages/RecommendationPage.dart';
import 'package:diet_app/pages/SwipeRecommendationPage.dart';
import 'package:diet_app/widgets/Homepage/CustomBottomBar2.dart';
import 'package:diet_app/widgets/Homepage/AppBarContents.dart';
import 'package:diet_app/widgets/Homepage/CustomEndDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _bottomBarController = Get.put(CustomBottomBarController());
  final List _pagesList = [
    const OverviewPage(),
    RecommendationPage(),
    // const SwipeRecommendationPage(),
    // SupabaseStream(),
    AddMealPage(),
    const Placeholder(color: Colors.red),
    const Placeholder(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarContents(),
        backgroundColor: appBackgroundColor,
        elevation: 5,
      ),
      backgroundColor: appBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Obx(
            () {
              return _pagesList[_bottomBarController.currentIndex.value];
            },
          ),
        ),
      ),
      endDrawer: const CustomEndDrawer(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: CustomBottomBar2(),
    );
  }
}
