import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/pages/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      text: "Get started",
      innerColor: const Color.fromARGB(255, 189, 85, 0),
      outerColor: sliderBackgroundColor.withOpacity(0.5),
      sliderButtonIcon: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      sliderRotate: false,
      onSubmit: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }
}
