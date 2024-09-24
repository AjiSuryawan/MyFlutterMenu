import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bottom_menu_example/controllers/dashboard_controller.dart';
import 'package:my_bottom_menu_example/pages/menu/home_menu.dart';
import 'package:my_bottom_menu_example/pages/menu/profile_menu.dart';
import 'package:my_bottom_menu_example/pages/menu/transaction_menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // connecting controller dengan UI
    final DashboardController dashboardController =
        Get.find();

    final List<Widget> menus = [HomeMenu(), TransactionMenu(), ProfileMenu()];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.money), label: "Transaction"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "profile"),
            ]),
      );
    });
  }
}
