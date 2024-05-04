import 'package:diet_app/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String desc;
  final double rating;
  final AssetImage profileImage;
  const DoctorCard(
      {super.key,
      required this.name,
      required this.desc,
      required this.profileImage,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3.0,
      ),
      child: Container(
        width: Get.width,
        height: 90,
        decoration: BoxDecoration(
            color: titleBackgroundColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 6,
                  spreadRadius: 1)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 6,
                              spreadRadius: 1)
                        ]),
                    width: 50,
                    height: 50,
                    child: Image(image: profileImage, fit: BoxFit.cover,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style:
                            GoogleFonts.lato(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        desc,
                        style: GoogleFonts.lato(
                            fontSize: 12, color: Colors.white.withOpacity(0.6)),
                      ),
                      Text(
                        "Rating: $rating/5.0",
                        style: GoogleFonts.lato(
                            fontSize: 12, color: Colors.white.withOpacity(0.6)),
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
