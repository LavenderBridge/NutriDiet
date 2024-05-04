import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewCard_small_glucose extends StatelessWidget {
  const OverviewCard_small_glucose({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        width: Get.width * 0.8,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(blurRadius: 8, spreadRadius: 1, color: Colors.black.withOpacity(0.2)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Glucose Levels",
                        style: GoogleFonts.lato(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.medical_information, size: 30, color: Colors.black54,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "31%",
                                style: GoogleFonts.lato(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                              ),
                              Icon(
                                (Icons.arrow_downward),
                                color: Colors.red,
                                size: 25,
                              ),
                            ],
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: Get.width * 0.3),
                            child: Text(
                              "Your glucose levels have spiked more",
                              style: GoogleFonts.lato(
                                  color: Colors.black87, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
