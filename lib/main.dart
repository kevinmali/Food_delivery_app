import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Views/Signup_page/Views/signup.dart';
import 'package:get/get.dart';
import 'Views/Cart_page/Views/cart_page.dart';
import 'Views/Home_screen/Viwes/home_screen.dart';
import 'Views/Login_page/Viwes/login_screen.dart';
import 'Views/Menu_page/Menu_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/', page: () => login_page()),
      GetPage(name: '/home', page: () => Home_Screen()),
      GetPage(name: '/menu', page: () => Menu_Screen()),
      GetPage(name: '/sign', page: () => Signup_page()),
      GetPage(name: '/cart', page: () => Cart_page()),
    ],
  ));
}
