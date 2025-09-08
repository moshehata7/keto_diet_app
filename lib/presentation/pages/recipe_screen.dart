import 'package:diey_app/presentation/widgets/image_category.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("وصفات ")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return ImageCategory(image: "assets/images/ideal-protein-diet-VA-768x512.jpg",
           onTap: () {});
        },
      ),
    );
  }
}
