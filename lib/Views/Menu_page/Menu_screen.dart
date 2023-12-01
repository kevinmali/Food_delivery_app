import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Model/json_model.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: rootBundle.loadString("lib/Assets/json.json"),
          builder: (context, snapshort) {
            if (snapshort.hasData) {
              String? jsondata = snapshort.data;
              List maydata = jsonDecode(jsondata!);
              List<Food> data =
                  maydata.map((e) => Food.frommap(data: e)).toList();
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) => Container(
                  height: 800,
                  width: double.infinity,
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 28.0),
                        child: Text(
                          "${data[i].foodItems[i]['foodName']}",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      (data[i].foodItems[i]['foodType'] == null)
                          ? Text("")
                          : Padding(
                              padding: EdgeInsets.only(top: 28.0),
                              child: Text(
                                "${data[i].foodItems[i]['foodType']}",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                      Center(
                        child: Text("${data[i].foodItems[i]['calories']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              );
            } else if (snapshort.hasError) {
              return Text("${snapshort.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
