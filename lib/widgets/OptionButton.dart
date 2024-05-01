import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData prefixIcon;
  const OptionButton({super.key, required this.text, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // color: Colors.orange,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(prefixIcon, color: Colors.orange,),
            SizedBox(width: 10,),
            Text(
              text,
              style: GoogleFonts.montserrat(
                color: Colors.orange,
                fontSize: 21
              ),
            ),
          ],
        ),
      ),
    );
  }
}
