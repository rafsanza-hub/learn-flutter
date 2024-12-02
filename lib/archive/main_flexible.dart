import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
          ],
        ));
  }
}
