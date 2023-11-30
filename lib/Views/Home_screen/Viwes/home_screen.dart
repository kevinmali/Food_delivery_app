import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Menu_page/Menu_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 400,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("lib/Assets/Images/foodhome.png"),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/menu");
                },
                child: Container(
                  margin: EdgeInsets.all(50),
                  height: 80,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.double_arrow_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
