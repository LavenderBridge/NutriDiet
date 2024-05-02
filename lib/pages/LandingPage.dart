import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/pages/Homepage.dart';
import 'package:diet_app/widgets/LandingPage/SlideBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBackgroundColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib\\assets\\images\\landing.jpg'),
              fit: BoxFit.cover,
              opacity: 0.7,
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.black54],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "DiabetiCare",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          height: 0,
                          letterSpacing: 2,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.7),
                          child: Text(
                            "Fuel Your Day Plan Your Way",
                            style: GoogleFonts.quicksand(
                              fontSize: 60,
                              height: 1.1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                          child: SlideBar()
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
