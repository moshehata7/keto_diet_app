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
              onTap: () {},
              hight: 150,
              width: double.infinity,
              image: "images/ideal-protein-diet-VA-768x512.jpg",
            ),
            Row(
              children: [
                Expanded(
                  child: ImageCategory(
                    onTap: () {},
                    hight: 120,
                    image: "images/IntermittentFasting_final-0b2134c18e154613b64a21a48b5b0114.jpg",
                  ),
                ),
                Expanded(
                  child: ImageCategory(
                    onTap: () {},
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
                    onTap: () {},
                    hight: 120,
                    image: "assets/images/ideal-protein-diet-VA-768x512.jpg",
                  ),
                ),
                Expanded(
                  child: ImageCategory(
                    onTap: () {},
                    hight: 120,
                    image: "assets/images/ideal-protein-diet-VA-768x512.jpg",
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
