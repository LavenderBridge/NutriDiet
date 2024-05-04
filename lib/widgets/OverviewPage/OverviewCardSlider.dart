import 'package:diet_app/widgets/OverviewPage/OverviewCard/OverviewCard_calorie.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard/OverviewCard_glucose.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCard/OverviewCard_steps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverviewCardSlider extends StatelessWidget {
  const OverviewCardSlider({super.key});

  final List<Widget> _topSliderCards = const [
                    OverviewCard_calorie(),
                    OverviewCard_glucose(),
                    OverviewCard_steps(),
                  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: SizedBox(
              height: Get.height * 0.20,
              width: Get.width,
              child: Center(
                child: PageView(
                  children: _topSliderCards,
                ),
              ),
            ),
          );
  }
}