import 'package:diet_app/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStream extends StatelessWidget {
  SupabaseStream({super.key});
  final dataStream =
      Supabase.instance.client.from('food_data').stream(primaryKey: ['S.no']);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: dataStream,
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final data = snapshot.data!;
        print(data.length);

        return SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal :10.0, vertical: 2),
                child: ListTile(
                  tileColor: sliderBackgroundColor,
                  title: Text(
                    data[index]['Food'].toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
