import 'package:diey_app/models/recipe_model.dart';
import 'package:diey_app/presentation/widgets/recipe_category.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});
  final List<Recipe> recipes = [
    Recipe(name: "بيتزا للفطار", image: "assets/images/pizza.jpg", onTap: () {}),
    Recipe(
      name: "فاصوليا باللحم",
      image: "assets/images/keto-green-beans.jpg",
      onTap: () {},
    ),
    Recipe(
      name: "كوكيز كيتو ",
      image: "assets/images/15-Featured-healthy.jpg",
      onTap: () {},
    ),
    Recipe(name: "فاهيتا لحم", image: "assets/images/fahita.jpg", onTap: () {}),
    Recipe(name: "خبز سمسم ", image: "assets/images/khobz.jpg", onTap: () {}),
    Recipe(name: "خبز قريش", image: "assets/images/khobzkresh.jpg", onTap: () {}),
    Recipe(name: "بشاميل كيتو", image: "assets/images/photo.jpg", onTap: () {}),
    Recipe(name: "مسقعه كيتو", image: "assets/images/meskaa.jpg", onTap: () {}),
    Recipe(name: "محشي كيتو", image: "assets/images/mahshi.jpg", onTap: () {}),
    Recipe(name: "كريب حلو", image: "assets/images/crepe.jpg", onTap: () {}),
    Recipe(name: " كفتة لحم", image: "assets/images/kofta.jpg", onTap: () {}),
    Recipe(name: "كيك شكولاتة", image: "assets/images/Cake_1.webp", onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("وصفات ")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCategory(recipe: recipes[index]);
        },
      ),
    );
  }
}
