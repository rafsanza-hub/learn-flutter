import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Container> grid = List.generate(100, (index) {
    return Container(
      height: 100,
      width: 100,
      color: Color.fromARGB(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
    );
  });

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid"),
        ),
        // body: GridView(
        //   padding: const EdgeInsets.all(20),
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 20,
        //       mainAxisSpacing: 20,
        //       childAspectRatio: 1 / 1),
        //   children: grid,
        // ),
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20),
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 20,
        //   mainAxisSpacing: 20,
        //   children: grid,
        // ),
        body: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, int index) {
              return Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                  ));
            }),
      ),
    );
  }
}
