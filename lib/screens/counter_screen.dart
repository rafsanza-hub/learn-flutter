import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:second_app/providers/Counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    // Counter counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(builder: (context, counter, child) {
              return Text(counter.count.toString());
            }),
            ElevatedButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).increment();
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
