import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(PageEmpat());
            Get.toNamed("/page_4");
          },
          child: const Text("Page 4 >>"),
        ),
      ),
    );
  }
}
