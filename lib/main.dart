import 'package:diey_app/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(KetoDietApp());
}
class KetoDietApp extends StatelessWidget {
  const KetoDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Cairo"
      ),
      debugShowCheckedModeBanner: false,
      home:MainPage()
    );
  }
}
