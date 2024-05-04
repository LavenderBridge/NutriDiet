import 'package:diet_app/widgets/OverviewPage/OverviewCard_small/OverviewCard_small_breathing.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard_small/OverviewCard_small_calorie.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard_small/OverviewCard_small_distance.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard_small/OverviewCard_small_glucose.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard_small/OverviewCard_small_steps%20copy.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard_small/OverviewCard_small_workout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewCardGrid extends StatelessWidget {
  const OverviewCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: const [
                      OverviewCard_small_calorie(),
                      OverviewCard_small_glucose(),
                      OverviewCard_small_steps(),
                      OverviewCard_small_distance(),
                      OverviewCard_small_workout(),
                      OverviewCard_small_breathing(),
                    ],
                  ),
                  SizedBox(height: 70,)
                ],
              ),
            ),
          );
  }
}