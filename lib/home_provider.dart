import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_app/http_provider.dart';

class HomeProvider extends StatefulWidget {
  HomeProvider({super.key});
  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {
  HttpProvider dataResponse = HttpProvider();
  @override
  Widget build(BuildContext context) {
    HttpProvider dataResponse =
        Provider.of<HttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("POST - Provider"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HttpProvider>(builder: (context, data, child) {
              return FittedBox(
                child: Text(
                  "Id : ${data.data["id"] ?? "belum ada data"}",
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }),
            const SizedBox(height: 20),
            Consumer<HttpProvider>(builder: (context, data, child) {
              return FittedBox(
                child: Text(
                  "Name : ${data.data["name"] ?? "belum ada data"}",
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }),
            const SizedBox(height: 20),
            Consumer<HttpProvider>(builder: (context, data, child) {
              return FittedBox(
                child: Text(
                  "Job : ${data.data["job"] ?? "belum ada data"}",
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }),
            const SizedBox(height: 20),
            Consumer<HttpProvider>(builder: (context, data, child) {
              return FittedBox(
                child: Text(
                  "CreatedAt : ${data.data["createdAt"] ?? "belum ada data"}",
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataResponse.connectApi("Rafsan", "Back End Developer");
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
