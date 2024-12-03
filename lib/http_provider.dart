import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HttpProvider with ChangeNotifier {
  Map data = {};

  connectApi(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users/");

    var hasilResponse = await http.post(
      url,
      body: {
        "name": name,
        "job": job,
      },
    );

    data = jsonDecode(hasilResponse.body);
    
    notifyListeners();
  }
}
