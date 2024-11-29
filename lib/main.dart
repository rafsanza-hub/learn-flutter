import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Learn Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.deepOrange,
            width: 412,
            height: 800,
            child: Image.network("https://picsum.photos/400/800"),
          ),
        ),
      ),
    );
  }
}
