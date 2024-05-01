import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar_DetailedFoodPage extends StatelessWidget {
  const TopBar_DetailedFoodPage({super.key});

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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.white
              )
            ),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
              style: IconButton.styleFrom(
                padding: EdgeInsets.zero,
                foregroundColor: Colors.white,
                backgroundColor: Colors.transparent,
                iconSize: 40,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.favorite,
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
