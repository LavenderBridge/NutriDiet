import 'package:diet_app/configs/routes.dart';
import 'package:diet_app/pages/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: "https://ijfxxkkhzpgoyvwuodwn.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlqZnh4a2toenBnb3l2d3VvZHduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ1ODAwMjQsImV4cCI6MjAzMDE1NjAyNH0.0rhpujclByNIe4c3H143eZoLPn-6V75etKTexx3nHAQ");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: GetPages,
      title: 'Diet App',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
