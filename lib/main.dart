import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:second_app/providers/Counter.dart';
import 'package:second_app/screens/counter_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Counter(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}
