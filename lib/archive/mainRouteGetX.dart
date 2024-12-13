import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/archive/pagesRouteGetX/home.dart';
import 'package:second_app/archive/pagesRouteGetX/page_1.dart';
import 'package:second_app/archive/pagesRouteGetX/page_2.dart';
import 'package:second_app/archive/pagesRouteGetX/page_3.dart';
import 'package:second_app/archive/pagesRouteGetX/page_4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/page_1', page: () => const PageSatu()),
        GetPage(name: '/page_2', page: () => const PageDua()),
        GetPage(name: '/page_3', page: () => const PageTiga()),
        GetPage(name: '/page_4', page: () => const PageEmpat()),
      ],
    );
  }
}
