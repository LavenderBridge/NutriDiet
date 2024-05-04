import 'package:diet_app/widgets/ProfilePage/MenuCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'lib\\assets\\images\\profile.jpg',
              ),
            ),
            Column(
              children: [
                Text(
                  "John Doe",
                  style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.8), fontSize: 25),
                ),
                Text(
                  "+91 98776 45231",
                  style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.6), fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                MenuCard(title: "About you", subtitle: "Age, Weight and other medical information", icon: Icons.person, iconColorData: Colors.teal,),
                MenuCard(title: "My Reports", subtitle: "Recent medical reports",icon: Icons.book, iconColorData: Colors.red,),
                MenuCard(title: "My Prescriptions", subtitle: "Prescription information, Refill reminder etc",icon: Icons.medication_liquid, iconColorData: Colors.lightBlue,),
                MenuCard(title: "Comorbidity", subtitle: "Other relavant medical issues",icon: Icons.medical_information, iconColorData: Colors.green,),
                MenuCard(title: "Settings", subtitle: "Global App settings",icon: Icons.settings,iconColorData: Colors.grey,),
                MenuCard(title: "Report an issue", subtitle: "Help us make this app better",icon: Icons.report, iconColorData: Colors.orange,),
              ],
            ),
            SizedBox(height: 10,),
            Text(
            "NutriDiet",
            style: GoogleFonts.dancingScript(
                color: Colors.white.withOpacity(0.6), fontSize: 14),
          ),
          ],
        ),
      ),
    );
  }
}
