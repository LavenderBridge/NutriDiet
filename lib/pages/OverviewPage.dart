import 'package:diet_app/widgets/OverviewPage/OverviewCardGrid.dart';
import 'package:diet_app/widgets/OverviewPage/OverviewCardSlider.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: Column(
        children: [
          OverviewCardSlider(),
          OverviewCardGrid(),
        ],
      ),
    );
  }
}
