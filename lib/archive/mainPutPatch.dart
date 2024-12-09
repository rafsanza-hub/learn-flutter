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
  TextEditingController name = TextEditingController();
  TextEditingController job = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Put & Patch"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: name,
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: job,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: "Job",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                )),
                foregroundColor: const WidgetStatePropertyAll(Colors.white),
                backgroundColor: const WidgetStatePropertyAll(Colors.blue)),
            onPressed: () async {
              var data = await http
                  .put(Uri.parse("https://reqres.in/api/users/2"), body: {
                "name": name.text,
                "job": job.text,
              });
              setState(() {
                hasil = json.decode(data.body);
              });
            },
            child: const Text("Submit"),
          ),
          const Divider(),
          const SizedBox(height: 100),
          Text("Nama: ${hasil["name"]}"),
          Text("Job: ${hasil["job"]}"),
        ],
      ),
    );
  }
}
