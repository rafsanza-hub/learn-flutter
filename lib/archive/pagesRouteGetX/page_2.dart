import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(PageTiga());
            Get.toNamed("/page_3");
          },
          child: const Text("Page 3 >>"),
        ),
      ),
    );
  }
}
