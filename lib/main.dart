import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        title: Text("PageView"),
      ),
      body: Center(
        child: PageView(children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Page 3"),
            ),
          )
        ]),
      ),
    );
  }
}
