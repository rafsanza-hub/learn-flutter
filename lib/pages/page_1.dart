import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(PageDua());
            Get.toNamed("/page_2");
          },
          child: const Text("Page 2 >>"),
        ),
      ),
    );
  }
}
