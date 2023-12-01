import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Utils/Global/varibals.dart';
import 'Model/json_model.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {
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
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Center(
                          child: Text(
                            "Food Name : ${data[i].foodItems[i]['foodName']}",
                            style: Globals.fontstyle,
                          ),
                        ),
                      ),
                      (data[i].foodItems[i]['foodType'] == null)
                          ? Text("")
                          : Padding(
                              padding: EdgeInsets.only(top: 28.0),
                              child: Center(
                                child: Text(
                                    "Food Type : ${data[i].foodItems[i]['foodType']}",
                                    style: Globals.typestyle),
                              ),
                            ),
                      Center(
                        child: Text(
                            "Calories ${data[i].foodItems[i]['calories']}",
                            style: Globals.pricestyle),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (!addedProducts.contains(data)) {
                            addedProducts.add(data[i]);
                          }
                          Get.toNamed('/cart');
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blueGrey,
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                      Divider(color: Colors.blueGrey, thickness: 5),
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
