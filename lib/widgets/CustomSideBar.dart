import 'package:flutter/material.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Text("Option"),
          Text("Option"),
          Text("Option"),
          Text("Option"),
          Text("Option"),
        ],
      ),
    );
  }
}