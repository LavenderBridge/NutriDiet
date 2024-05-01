import 'package:diet_app/widgets/OverviewCard_small/OverviewCard_small_calorie.dart';
import 'package:diet_app/widgets/OverviewCard_small/OverviewCard_small_gllucose.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard/OverviewCard_calorie.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard/OverviewCard_glucose.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Container(
              height: Get.height * 0.20,
              width: Get.width,
              // color: Colors.orange,
              child: Center(
                child: PageView(
                  children: [
                    OverviewCard_calorie(),
                    OverviewCard_glucose(),
                    OverviewCard_calorie(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                    child: Text(
                      "Summary of your week",
                      style: GoogleFonts.lato(fontSize: 20),
                    ),
                  ),
                  GridView(
                    
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      OverviewCard_small_glucose(),
                      OverviewCard_small_glucose(),
                      OverviewCard_small_glucose(),
                      OverviewCard_small_glucose(),
                      OverviewCard_small_glucose(),
                      OverviewCard_small_glucose(),
                    ],
                  ),
                  SizedBox(height: 70,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
