import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bottom_menu_example/controllers/example_controller.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final ExampleController exampleController = Get.find();

    return Scaffold(
      body: Center(child: Text("ini home menu")),
    );
  }
}
