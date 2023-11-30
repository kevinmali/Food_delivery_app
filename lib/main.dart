import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/Home_screen/Viwes/home_screen.dart';
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
      // GetPage(name: '/', page: () => login_page()),
      GetPage(name: '/', page: () => Home_Screen()),
      GetPage(name: '/menu', page: () => Menu_Screen()),
    ],
  ));
}
