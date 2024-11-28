import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: 200,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Container(color: Colors.red, height: 50, width: 50),
          ],
        ),
      ),
    );
  }
}
