import 'package:diey_app/presentation/pages/main_page.dart';
import 'package:diey_app/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(KetoDietApp());
}
class KetoDietApp extends StatelessWidget {
  const KetoDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Cairo"
      ),
      debugShowCheckedModeBanner: false,
      home:SplashScreen()
    );
  }
}
