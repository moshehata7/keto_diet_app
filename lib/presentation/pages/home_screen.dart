import 'package:diey_app/presentation/pages/intermittent_fasting_screen.dart';
import 'package:diey_app/presentation/pages/keto_diet_screen.dart';
import 'package:diey_app/presentation/widgets/image_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الرئيسية ")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ImageCategory(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return KetoDietScreen();
                    },
                  ),
                );
              },
              hight: 150,
              width: double.infinity,
              image: "assets/images/520ee979c581332e6492bc19573b1c4d.png.webp",
            ),
            Row(
              children: [
                Expanded(
                  child: ImageCategory(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return IntermittentFastingScreen();
                    },
                  ),
                );
                    },
                    hight: 120,
                    image: "assets/images/صيام-متقطع-1751107066 (1).webp",
                  ),
                ),
                Expanded(
                  child: ImageCategory(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return KetoDietScreen();
                    },
                  ),
                );
                    },
                    hight: 120,
                    image: "assets/images/ideal-protein-diet-VA-768x512.jpg",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ImageCategory(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return KetoDietScreen();
                    },
                  ),
                );
                    },
                    hight: 120,
                    image: "assets/images/1-1638490.webp",
                  ),
                ),
                Expanded(
                  child: ImageCategory(
                    onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return KetoDietScreen();
                    },
                  ),
                );
                    },
                    hight: 120,
                    image: "assets/images/books.jpg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
