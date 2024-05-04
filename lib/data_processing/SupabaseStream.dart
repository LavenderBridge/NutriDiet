import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/SupabaseController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStream extends StatefulWidget {
  var renderList;
  SupabaseStream({super.key, required this.renderList});

  @override
  State<SupabaseStream> createState() => _SupabaseStreamState();
}

class _SupabaseStreamState extends State<SupabaseStream> {
  final dataStream =
      Supabase.instance.client.from('food_data').stream(primaryKey: ['S.no']);

      var _dataController = Get.put(SupabaseController());

  @override
  Widget build(BuildContext context) {

    var allData = _dataController.data;
    var renderData = widget.renderList;

    
    return Flexible(
          child: Container(
            child: ListView.builder(
              // shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: renderData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal :10.0, vertical: 2),
                  child: ListTile(
                    onTap: () {
                      Map<String, dynamic> selectedData = allData[0];
                      for (int i = 0; i < allData.length; i++){
                        if (allData[i]['Food'] == renderData[index]){
                          selectedData = (allData[i]);
                        }
                      }
                      print("SELECTED DATA: ${selectedData['Food']}");
                      showDialog(
                        useRootNavigator: false,
                        context: context, builder: (context){
                        return AlertDialog(
                          backgroundColor: appBackgroundColor,
                          title: Text(selectedData['Food'], style: GoogleFonts.lato(color: Colors.white),),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Category : ", style: GoogleFonts.lato(color: Colors.white),),
                                  Text(selectedData['Category'], style: GoogleFonts.lato(color: Colors.white),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Grams : ", style: GoogleFonts.lato(color: Colors.white),),
                                  Text(selectedData['Grams'], style: GoogleFonts.lato(color: Colors.white),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Calories : ", style: GoogleFonts.lato(color: Colors.white),),
                                  Text(selectedData['Calories'], style: GoogleFonts.lato(color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("Cancel", style: GoogleFonts.lato(color: Colors.white))),
                            TextButton(onPressed: () {
                              _dataController.currentMeal.value.add(selectedData);
                              _dataController.currentMeal.refresh();
                              Navigator.of(context).pop();
                            }, child: Text("Add Item", style: GoogleFonts.lato(color: Colors.white))),
                          ],
                        );
                      });
                    },
                    tileColor: sliderBackgroundColor,
                    title: Text(
                      renderData[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        );
  }
}
