import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("State"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${c.count}",
                style: const TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => c.decrement(), child: const Text("-")),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () => c.increment(), child: const Text("+")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  RxInt count = 0.obs;

  increment() => count++;
  decrement() => count--;
}
