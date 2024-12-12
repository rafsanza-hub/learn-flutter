import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/pages/page_3.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 4"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
            Get.back();
            // Get.until(
            //   (route) => Get.currentRoute == '/page_2',
            // );
          },
          child: const Text("<< Back to Page 2"),
        ),
      ),
    );
  }
}
