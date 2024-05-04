import 'package:diet_app/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color? iconColorData;
  const MenuCard({super.key, required this.title, required this.subtitle, required this.icon, required this.iconColorData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3.0,
      ),
      child: Container(
        width: Get.width,
        height: 60,
        decoration: BoxDecoration(
          color: titleBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 6, spreadRadius: 1)]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: iconColorData,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.lato(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.lato(fontSize: 12, color: Colors.white.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_right,
                size: 40,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
