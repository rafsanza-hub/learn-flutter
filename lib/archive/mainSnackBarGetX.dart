import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "SnackBar",
                "SnackBar",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.red,
                colorText: Colors.white,
                borderRadius: 10,
                margin: const EdgeInsets.all(10),
                duration: const Duration(seconds: 3),
                isDismissible: true,
                dismissDirection: DismissDirection.horizontal,
                forwardAnimationCurve: Curves.easeInOut,
              );
            },
            child: const Text("click me")),
      ),
    );
  }
}
