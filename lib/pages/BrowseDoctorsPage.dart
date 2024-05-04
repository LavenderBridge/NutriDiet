import 'package:diet_app/pages/ShowExpandedDoctor.dart';
import 'package:diet_app/widgets/BrowseDoctorsPage/DoctorCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseDoctorsPage extends StatelessWidget {
  const BrowseDoctorsPage({super.key});

  // final List _doctorList = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book an appointment",
                  style: GoogleFonts.montserrat(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Browse from our extensive list of vetted nutritionists",
                  style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.6), fontSize: 14),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return TextButton(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () => Get.to(ShowExpandedDoctor(
                        name: "John Doe",
                        profileImage:
                            AssetImage("lib\\assets\\images\\doctor.jpg"),
                      )),
                  child: DoctorCard(
                      name: "John Doe",
                      desc: "Your everyday nutritionist",
                      rating: 4.2,
                      profileImage:
                          AssetImage("lib\\assets\\images\\doctor.jpg")));
            },
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
