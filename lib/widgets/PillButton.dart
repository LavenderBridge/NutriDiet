import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PillButton extends StatelessWidget {
  final String text;
  bool active;
  PillButton({super.key, required this.text, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.transparent,
        border: Border.all(color: Colors.white,),
        borderRadius: BorderRadius.circular(1000)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Text(
            text,
            style: GoogleFonts.montserrat(color: active ? Colors.black : Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
