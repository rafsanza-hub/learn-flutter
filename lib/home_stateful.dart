import 'package:flutter/material.dart';
import 'package:second_app/http_stateful.dart';

class HomeStateful extends StatefulWidget {
  HomeStateful({super.key});
  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful dataResponse = HttpStateful();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POST - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                "ID : ${dataResponse.id ?? "belum ada data"}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            FittedBox(
                child: Text("Name : ${dataResponse.name ?? "belum ada data"}",
                    style: const TextStyle(fontSize: 20))),
            const SizedBox(height: 20),
            FittedBox(
                child: Text("Job : ${dataResponse.job ?? "belum ada data"}",
                    style: const TextStyle(fontSize: 20))),
            const SizedBox(height: 20),
            FittedBox(
                child: Text(
                    "Created At : ${dataResponse.createdAt ?? "belum ada data"} ",
                    style: const TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "Belum ada data"
                    : "data berhasil di terima",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStateful.connectApi("Rafsan", "BackEnd").then((value) {
                  setState(() {
                    dataResponse = value;
                  });
                });
              },
              child: const Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
