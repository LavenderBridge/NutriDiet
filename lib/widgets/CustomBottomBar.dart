import 'package:diet_app/configs/configs.dart';
import 'package:diet_app/controllers/CustomBottomBarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({super.key});

  final controller = Get.put(CustomBottomBarController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        height: 80,
        // width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.orange
          ),
          child: Obx(
            () {
              return NavigationBar(
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                backgroundColor: Colors.transparent,
                elevation: 0,
                indicatorColor: Colors.white,
                onDestinationSelected: (value) {
                  controller.changeIndex(value);
                },
                selectedIndex: controller.currentIndex.value,
                destinations: [
                  NavigationDestination(
                    icon: Icon(
                      Icons.home,
                      color: appBackgroundColor,
                    ),
                    label: 'Home',
                    
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.recommend),
                    label: 'Explore',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              );
            },
          )),
    );
  }
}
