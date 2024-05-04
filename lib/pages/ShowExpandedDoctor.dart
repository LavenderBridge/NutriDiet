import 'package:diet_app/components/TopBar_DetailedFoodPage.dart';
import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/statics.dart';
import 'package:diet_app/widgets/FoodCard_DetailedFoodPage.dart';
import 'package:diet_app/widgets/IngredientsCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowExpandedDoctor extends StatelessWidget {
  final String name;
  final AssetImage profileImage;
  const ShowExpandedDoctor(
      {super.key, required this.name, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: TopBar_DetailedFoodPage(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.quicksand(
                            color: Colors.white, fontSize: 60, height: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5),
                        child: Text(
                          "Your everyday nutritionist (4.25/5.0)",
                          style: GoogleFonts.quicksand(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: profileImage),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About John Doe",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 150),
                          child: Divider(height: 12)),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac sem non lacus malesuada bibendum ac sodales mauris. Donec vitae mollis leo. In vestibulum lectus mi, ut porttitor orci semper eu. Sed a ligula turpis. Ut venenatis elementum tortor, ut ullamcorper arcu. Pellentesque dolor ligula, varius eget pulvinar quis, accumsan sollicitudin ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque ut ex nibh. Quisque in mollis dui. Aliquam eget tincidunt metus. Fusce commodo nibh a quam tempor, id tincidunt odio interdum. Suspendisse ut dolor at neque gravida rhoncus. Nunc orci nibh, mollis non turpis non, porttitor ornare ante. Quisque quis tempor ligula. Cras at purus sit amet mauris varius iaculis in sed sapien. Fusce finibus viverra placerat.",
                        style: GoogleFonts.quicksand(
                            color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Qualifications: ",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5,),
                      // Padding(
                      //     padding: EdgeInsets.only(right: 150),
                      //     child: Divider(height: 12)),
                      Text(
                        "MBBS, MD",
                        style: GoogleFonts.quicksand(
                            color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location: ",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      // Padding(
                      //     padding: EdgeInsets.only(right: 150),
                      //     child: Divider(height: 12)),
                      Text(
                        "No 1, Mudichur Road Krishna Nagar, Tambaram West, Chennai - 600045 (Near Union Bank)",
                        style: GoogleFonts.quicksand(
                            color: Colors.white, fontSize: 12),
                      ),
                      TextButton(
                        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {}, child: Text("Click here to navigate to location", style: GoogleFonts.quicksand(color: Colors.lightBlue),))
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.orange,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      "Your appointment request was raised successfully. You will hear back from John Doe's office in 12 hours"),
                  duration: Duration(seconds: 4),
                ),
              );
            },
            label: Row(
              children: [
                Icon(
                  Icons.add_circle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Request an appointment",
                  style: GoogleFonts.montserrat(color: Colors.white),
                ),
              ],
            )));
  }
}


// Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.orange,
//             boxShadow: [
//               BoxShadow(
//                   blurRadius: 4,
//                   spreadRadius: 4,
//                   color: Colors.black.withOpacity(0.1))
//             ]),
//         // height: 60,
//         child: FloatingActionButton(
          // onPressed: () {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text("Your appointment request was raised successfully. You will hear back from John Doe's office in 12 hours"),
          //       duration: Duration(seconds: 4),
          //     ),
          //   );
          // },
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.add_circle,
//                 color: Colors.white,
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 "Request an appointment",
//                 style: GoogleFonts.montserrat(color: Colors.white),
//               ),
//             ],
//           ),
//         ),
//       ),