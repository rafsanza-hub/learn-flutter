import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(PageSatu());
            Get.toNamed("/page_1");
          },
          child: const Text("Page 1 >>"),
        ),
      ),
    );
  }
}
