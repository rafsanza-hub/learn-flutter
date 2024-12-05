import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_app/home_provider.dart';
import 'package:second_app/http_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HttpProvider(),
      child: MaterialApp(
        home: HomeProvider(),
      ),
    );
  }
}
