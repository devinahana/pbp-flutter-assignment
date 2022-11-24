import 'package:counter_7/page/watchlist_detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/fetch.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  _WatchListPageState createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: MyDrawer(),
        body: FutureBuilder(
            future: fetchWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 2.0,
                                  color: (snapshot.data![index].fields.watched ? Colors.green : Colors.red),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            child: 
                              ListTile(
                                title: Text(
                                  "${snapshot.data![index].fields.title}",
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                                trailing: Checkbox(
                                  value: snapshot.data![index].fields.watched,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      snapshot.data![index].fields.watched = value!;
                                    });
                                  },
                                ),
                                onTap: () {
                                  // Route menu ke halaman utama
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => WatchListDetail(movie: snapshot.data![index])),
                                  );
                                },

                              )
                              
                                
                          ));
                }
              }
            }));
  }
}
