import 'package:flutter/material.dart';
import 'package:second_app/home2.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HomePage2();
          }));
        },
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
    );
}
}
