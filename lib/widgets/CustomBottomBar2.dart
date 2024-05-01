import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/CustomBottomBarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomBar2 extends StatelessWidget {
  final controller = Get.put(CustomBottomBarController());
  CustomBottomBar2({super.key});

  @override
  Widget build(BuildContext context) {
    print(controller.currentIndex.value);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(10)),
          child: Obx(
            () {
              return BottomNavigationBar(
                onTap: (value) {
                  controller.changeIndex(value);
                },
                currentIndex: controller.currentIndex.value,
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.black,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(
                        Icons.home,
                        color: appBackgroundColor,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.recommend, color: appBackgroundColor),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.add_circle, color: appBackgroundColor),
                      label: "Add"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.favorite, color: appBackgroundColor),
                      label: "Saved"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.person, color: appBackgroundColor),
                      label: "Profile"),
                ],
              );
            },
          )),
    );
  }
}
