import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Home_screen/Viwes/home_screen.dart';
import 'Login_page/Viwes/login_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/', page: () => Login_Screen()),
      GetPage(name: '/home', page: () => Home_Screen()),
    ],
  ));
}
