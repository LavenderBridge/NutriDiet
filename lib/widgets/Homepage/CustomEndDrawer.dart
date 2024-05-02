import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/widgets/OptionButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: appBackgroundColor,
        child: ListView(
          children: [
            Container(
              color: sliderBackgroundColor,
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Menu",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
            const OptionButton(text: "Profile", prefixIcon: Icons.person),
            const OptionButton(text: "Profile", prefixIcon: Icons.person),
            const OptionButton(text: "Settings", prefixIcon: Icons.settings)
          ],
        ),
      );
  }
}