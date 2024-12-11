import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

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
        title: const Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Dialog",
              middleText: "Dialog",
              textConfirm: "Confirm",
              textCancel: "Cancel",
              confirmTextColor: Colors.black,
              cancelTextColor: Colors.black,
              onConfirm: () {},
              onCancel: () {},
            );
          },
          child: const Text("click me"),
        ),
      ),
    );
  }
}
