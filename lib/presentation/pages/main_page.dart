import 'package:diey_app/presentation/pages/calories_calculator_screen.dart';
import 'package:diey_app/presentation/pages/home_screen.dart';
import 'package:diey_app/presentation/pages/macros_details_screen.dart';
import 'package:diey_app/presentation/pages/recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    HomeScreen(),
    RecipeScreen(),
    CaloriesCalculatorScreen(),
    MacrosDetailsScreen()
    ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
      index: currentIndex,
      children: pages 
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.houseChimney),
    label: "الرئيسية",
  ),
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.kitchenSet),
    label: "الوصفات",
  ),
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.calculator),
    label: "احسب سعراتك"
  ),
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.noteSticky),
    label: "اعرف نسبك ",
  ),
        ],
      ),
    );
  }
}
