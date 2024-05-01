import 'package:diet_app/configs/configs.dart';
import 'package:flutter/material.dart';

class IngredientsCard extends StatelessWidget {
  final String title;
  const IngredientsCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 3)],
          // color: Colors.black
          color: sliderBackgroundColor),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22
          ),
        ),
      ),
    );
  }
}
