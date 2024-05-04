import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/SupabaseController.dart';
import 'package:diet_app/data_processing/SupabaseStream.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchLayout extends StatefulWidget {
  SearchLayout({super.key});

  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  var _searchBoxController = TextEditingController();
  var _dataController = Get.put(SupabaseController());

  List<String> data = [];
  var currentMeal;

  void initState() {
    data = _dataController.names_data;
    super.initState();
  }

  void _filterList(String currentValue) {
    List<String> results = [];
    if (currentValue == '')
      results = data;
    else {
      results = data
          .where(
              (name) => name.toLowerCase().contains(currentValue.toLowerCase()))
          .toList();
    }

    setState(() {
      data = results;
      print("New data pushed");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: sliderBackgroundColor,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              // autofillHints: _dataController.names_data,
              style: GoogleFonts.lato(color: Colors.white),
              controller: _searchBoxController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search here",
                  hintStyle: GoogleFonts.lato(color: Colors.white24)),
              onChanged: (value) {
                _filterList(value);
              },
            ),
          ),
        ),
        SizedBox(height: 10,),
        data.length == 0
            ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
              child: Text(
                  "No results found",
                  style: GoogleFonts.montserrat(
                    color: Colors.white54,
                  ),
                ),
            )
            : SupabaseStream(renderList: data),
      ],
    );
  }
}
