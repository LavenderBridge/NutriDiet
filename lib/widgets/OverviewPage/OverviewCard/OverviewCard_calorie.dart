import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverviewCard_calorie extends StatelessWidget {
  const OverviewCard_calorie({super.key});

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
            BoxShadow(blurRadius: 8, spreadRadius: 2),
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
                    "Calorie Intake",
                    style: GoogleFonts.lato(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "23%",
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
                          "You are within range. Well done!",
                          style: GoogleFonts.lato(
                              color: Colors.black87, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: Get.width * 0.4),
                child: SfRadialGauge(
                  axes: [
                    RadialAxis(
                      annotations: [
                        GaugeAnnotation(
                            widget: Text(
                          "250 KCal",
                          style: GoogleFonts.montserrat(),
                        ))
                      ],
                      pointers: [
                        MarkerPointer(
                          value: 25,
                          color: Colors.orange,
                          elevation: 2,
                          markerOffset: -15,
                        ),
                      ],
                      showTicks: false,
                      canScaleToFit: true,
                      showLabels: false,
                      ranges: [
                        GaugeRange(
                          startValue: 0,
                          endValue: 10,
                          color: Colors.red,
                        ),
                        GaugeRange(
                          startValue: 10,
                          endValue: 30,
                          color: Colors.yellow,
                        ),
                        GaugeRange(
                          startValue: 30,
                          endValue: 70,
                          color: Colors.green,
                        ),
                        GaugeRange(
                          startValue: 70,
                          endValue: 90,
                          color: Colors.yellow,
                        ),
                        GaugeRange(
                          startValue: 90,
                          endValue: 100,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
