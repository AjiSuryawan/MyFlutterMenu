import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import 'menu/home_menu.dart';
import 'menu/profile_menu.dart';
import 'menu/transaction_menu.dart';

class DashboardNavDrawer extends StatelessWidget {
  const DashboardNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
// connecting controller dengan UI
    final DashboardController dashboardController =
        Get.put(DashboardController());

    final List<Widget> menus = [HomeMenu(), TransactionMenu(), ProfileMenu()];

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Example"),
        ),
        body: menus[dashboardController.selectedIndex.value],
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    "Menu",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text("Home"),
                onTap: () {
                  dashboardController.changeMenu(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text("Transactions"),
                onTap: () {
                  dashboardController.changeMenu(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.people_outline),
                title: Text("Profile"),
                onTap: () {
                  dashboardController.changeMenu(2);
                  Navigator.pop(context);
                },
              ),
              
            ],
          ),
        ),
      );
    });
  }
}
