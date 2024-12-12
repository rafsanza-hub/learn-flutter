import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/pages/home.dart';
import 'package:second_app/pages/page_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [GetPage(name: '/page_2', page: () => PageDua())],
      home: HomePage(),
    );
  }
}
