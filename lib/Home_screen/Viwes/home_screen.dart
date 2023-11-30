import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              Image(
                image: AssetImage("lib/Assets/Images/foodhome.png"),
                height: 200,
                width: 200,
                alignment: Alignment.bottomCenter,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
