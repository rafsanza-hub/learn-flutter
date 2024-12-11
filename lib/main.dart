import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Controller c = Get.put(Controller());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(c.count.toString())),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => c.increment(),
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: () => c.decrement(),
                  child: const Text("-"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var count = 0.obs;

  increment() => count++;
  decrement() => count--;
}
