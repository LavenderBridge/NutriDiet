import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseFunctions {
  Future<void> readData() async {
    var response = await Supabase.instance.client
        .from('food_data')
        .select();
    print(response);
  }
}