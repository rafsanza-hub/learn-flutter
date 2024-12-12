import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/pages/page_1.dart';

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
            Get.to(PageSatu());
          },
          child: const Text("Page 1 >>"),
        ),
      ),
    );
  }
}
