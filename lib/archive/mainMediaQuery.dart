import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double appBarHeight = kToolbarHeight;
    final double bodyHeight =
        screenHeight - appBarHeight - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: bodyHeight * 0.5,
              width: screenWidth,
              color: Colors.red,
            ),
            SizedBox(
              height: bodyHeight * 0.5,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, indext) {
                    return const ListTile(
                      subtitle: Text("Subbbb"),
                      leading: CircleAvatar(),
                      title: Text("Item"),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
