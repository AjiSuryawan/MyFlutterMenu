import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("press to move another page"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/dashboard');
                },
                child: Text("login"))
          ],
        ),
      ),
    );
  }
}
