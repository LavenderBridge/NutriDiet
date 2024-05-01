import 'package:diet_app/widgets/PillButton.dart';
import 'package:flutter/material.dart';

class ScrollBar extends StatelessWidget {
  const ScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      // color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PillButton(
            text: "All",
            active: true,
          ),
          PillButton(
            text: "Today",
            active: false,
          ),
          PillButton(
            text: "Tomorrow",
            active: false,
          )
        ],
      ),
    );
  }
}
