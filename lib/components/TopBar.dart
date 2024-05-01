import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      width: MediaQuery.of(context).size.width,
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: GoogleFonts.montserrat(
                  fontSize: 35,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              Text(
                "Kunal",
                style: GoogleFonts.montserrat(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.menu,
              ),
            ),
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              iconSize: 40,
            ),
          )
        ],
      ),
    );
  }
}
