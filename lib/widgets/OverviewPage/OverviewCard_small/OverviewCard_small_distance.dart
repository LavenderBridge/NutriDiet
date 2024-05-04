import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverviewCard_small_distance extends StatelessWidget {
  const OverviewCard_small_distance({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Distance covered",
                    style: GoogleFonts.lato(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.speed, size: 30, color: Colors.black54,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "2.1km",
                            style: GoogleFonts.lato(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                          Icon(
                            (Icons.arrow_upward),
                            color: Colors.green,
                            size: 25,
                          ),
                        ],
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: Get.width * 0.3),
                        child: Text(
                          "You traveled 2.1 km more than last week",
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
        ),
      ),
    );
  }
}
