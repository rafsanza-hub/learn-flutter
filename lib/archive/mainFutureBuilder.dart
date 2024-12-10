import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

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
  HomePage({super.key});
  List<Map<String, dynamic>> allUser = [];
  Future getData() async {
    var data = await http.get(Uri.parse("https://reqres.in/api/users/"));
    allUser.addAll(
        List<Map<String, dynamic>>.from(json.decode(data.body)["data"]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                  itemCount: allUser.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                            "${allUser[index]["first_name"]} ${allUser[index]["last_name"]}"),
                        subtitle: Text("subtitle"),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage:
                              NetworkImage(allUser[index]["avatar"]),
                        ),
                      ));
            }
          }),
    );
  }
}
