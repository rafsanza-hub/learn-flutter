import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;
  String message = "button not clicked";
  void clickButton() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(count.toString()),
              ElevatedButton(
                  onPressed: () => setState(() => count++),
                  child: const Text("click me")),
              Text(
                message,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() => message = "button already clicked");
                  },
                  child: const Text("Click me")),
            ],
          ),
        ),
      ),
    );
  }
}
