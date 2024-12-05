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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map hasil = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hasil = {
      "id": "",
      "first_name": "",
      "last_name": "",
      "email": "",
      "avatar": "",
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama depan: ${hasil["first_name"]}"),
            Text("Nama belakang: ${hasil["last_name"]}"),
            Text("Email: ${hasil["email"]}"),
            ElevatedButton(
              onPressed: () async {
                var url = Uri.parse("https://reqres.in/api/users/2");
                var response = await http.get(url);
                Map data = json.decode(response.body);
                setState(() {
                  if (response.statusCode == 200) {
                    hasil = data["data"];
                  }
                });
              },
              child: const Text("Ambil data"),
            ),
          ],
        ),
      ),
    );
  }
}
