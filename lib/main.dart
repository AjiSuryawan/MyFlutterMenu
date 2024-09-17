import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bottom_menu_example/pages/dashboard_page.dart';
import 'package:my_bottom_menu_example/pages/login_page.dart';

import 'pages/dashboard_nav_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        // list all pages here
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => DashboardNavDrawer(),
        ),
      ],
    );
  }
}
