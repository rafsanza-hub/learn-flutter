import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/pages/page_3.dart';

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
            Get.to(PageTiga());
          },
          child: const Text("Page 3 >>"),
        ),
      ),
    );
  }
}
