import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/SupabaseController.dart';
import 'package:diet_app/widgets/AddMealPage/SearchLayout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewPageBlank extends StatelessWidget {
  AddNewPageBlank({super.key});

  var _dataController = Get.put(SupabaseController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Add new",
            style: GoogleFonts.montserrat(
                color: Colors.white.withOpacity(0.6), fontSize: 65),
          ),
          Text(
            "Click the plus icon below to add your own custom meal",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: Colors.white.withOpacity(0.6), fontSize: 18),
          ),
          SizedBox(
            height: 40,
          ),
          IconButton(
            onPressed: () async {
              return showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: Get.height,
                      decoration: BoxDecoration(
                        color: appBackgroundColor,
                        // boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 4)],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SearchLayout(),
                      ),
                    );
                  });
            },
            icon: Icon(Icons.add),
            iconSize: 180,
          )
        ],
      ),
    );
  }
}