import 'package:flutter/material.dart';
import 'package:second_app/home_page2.dart';

class HomePage1 extends StatelessWidget {
  static const routeName = '/home';
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, HomePage2.routeName);
        },
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
    );
  }
}
