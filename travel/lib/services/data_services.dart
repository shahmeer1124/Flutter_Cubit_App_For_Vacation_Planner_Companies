import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/data_model.dart';

class DataServices {
  String baseurl = "http://127.0.0.1:8000/api";
  Future<List<DataModel>> getinfo() async {
    var apiUrl = "/travel";
    http.Response res = await http.get(Uri.parse(baseurl + apiUrl));
    print("hello world");
    print(res.body);
    print("hello world");

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
