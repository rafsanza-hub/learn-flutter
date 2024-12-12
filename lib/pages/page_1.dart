import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/pages/page_2.dart';

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
            Get.to(PageDua());
          },
          child: const Text("Page 2 >>"),
        ),
      ),
    );
  }
}
