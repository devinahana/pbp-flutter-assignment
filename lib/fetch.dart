import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<MyWatchList>> fetchWatchList() async {
    var url = Uri.parse(
        'https://tugas-2-devina.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<MyWatchList> watchLists = [];
    for (var d in data) {
      if (d != null) {
        watchLists.add(MyWatchList.fromJson(d));
      }
    }

    return watchLists;
  }
