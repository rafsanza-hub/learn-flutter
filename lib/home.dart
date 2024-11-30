import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Belum ada Aksi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Center(
        child: Text(data),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Alert"),
                  content: const Text("Are you sure?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            data = "Data tidak dihapus";
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text("No")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            data = "Data dihapus";
                            Navigator.of(context).pop();
                          });
                        },
                        child: const Text("Yes"))
                  ],
                );
              });
        },
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
