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

  List<Food> Fooddelivry = [];

  Future<void> loadJSON() async {
    data = await rootBundle.loadString("lib/Assets/json.json");

    setState(() {
      List decodeList = jsonDecode(data!);

      Fooddelivry = decodeList.map((e) => Food.frommap(data: e)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    loadJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: Fooddelivry.length,
          itemBuilder: (context, i) => Container(
            height: 800,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 28.0),
                  child: Text(
                    "${Fooddelivry[i].foodName}",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28.0),
                  child: Text(
                    "${Fooddelivry[i].protein}",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "${Fooddelivry[i].foodType}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
