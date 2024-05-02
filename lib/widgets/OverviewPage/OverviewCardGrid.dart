import 'package:diet_app/widgets/OverviewCard_small/OverviewCard_small_calorie.dart';
import 'package:diet_app/widgets/OverviewCard_small/OverviewCard_small_glucose.dart';
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
                      OverviewCard_small_glucose(),
                      OverviewCard_small_calorie(),
                      OverviewCard_small_glucose(),
                      OverviewCard_small_glucose(),
                    ],
                  ),
                  SizedBox(height: 70,)
                ],
              ),
            ),
          );
  }
}