import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseController extends GetxController{
  var data = [];
  List<String> names_data = [];
  var currentMeal = [].obs;

  final dataStream = Supabase.instance.client.from('food_data').stream(primaryKey: ['S.no']);

  Future<void> fetchdata() async {
    var response = await Supabase.instance.client
        .from('food_data')
        .select();
    data = response;
    for (var i in data) {
      names_data.add(i['Food']);
    }
  }
}