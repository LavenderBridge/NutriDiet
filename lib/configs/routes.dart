import 'package:diet_app/pages/DetailedFood.dart';
import 'package:diet_app/pages/Homepage.dart';
import 'package:diet_app/pages/LandingPage.dart';
import 'package:diet_app/pages/RecommendationPage.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> GetPages = [
        GetPage(name: '/landing', page: () => LandingPage()),
        GetPage(name: '/home', page: () =>  HomePage()),
        GetPage(name: '/explore', page: () => RecommendationPage()),
        GetPage(name: '/detailedfood', page: () => DetailedFood(index: Get.arguments[0]))
        // GetPage(name: '/third', page: () => Third()),
        // GetPage(name: "/fourth", page: () => Fourth()),
      ];