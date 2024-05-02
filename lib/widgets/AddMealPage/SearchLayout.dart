import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/SupabaseController.dart';
import 'package:diet_app/data_processing/SupabaseStream.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          child: TextField(
            controller: _searchBoxController,
            decoration: InputDecoration(border: InputBorder.none),
            onChanged: (value) {
              _filterList(value);
            },
          ),
        ),
        SupabaseStream(renderList: data),
      ],
    );
  }
}