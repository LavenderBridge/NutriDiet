// import 'package:diet_app/statics.dart';
import 'package:diet_app/controllers/FoodCardController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  final AssetImage bgImage;
  // final int cardIndex;
  final String title;

  FoodCard({super.key, required this.bgImage, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: bgImage, fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Colors.black87, Colors.black45],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.7),
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right_alt,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
