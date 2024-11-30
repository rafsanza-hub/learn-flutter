import 'package:flutter/material.dart';
import 'package:second_app/home_page.dart';
import 'package:second_app/home_page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage1(),
      routes: {
        HomePage1.routeName: (context) => const HomePage1(),
        HomePage2.routeName: (context) => const HomePage2(),
      },
    );
  }
}
