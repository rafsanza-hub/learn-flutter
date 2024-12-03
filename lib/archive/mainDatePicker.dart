import 'package:flutter/material.dart';

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
  DateTime? selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate.toString(),
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    initialDate: DateTime.now(),
                    // initialDatePickerMode: DatePickerMode.day,
                    // initialEntryMode: DatePickerEntryMode.calendarOnly,
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                    helpText: "Pilih Tanggal",
                    builder: (context, dynamic child) {
                      return Theme(
                        data: ThemeData.dark(),
                        child: child,
                      );
                    },
                  ).then((value) {
                    setState(() {
                      selectedDate = value ?? DateTime.now();
                    });
                  });
                },
                child: const Text("Pilih Tanggal")),
          ],
        ),
      ),
    );
  }
}
