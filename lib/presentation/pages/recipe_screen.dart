import 'package:diey_app/models/recipe_model.dart';
import 'package:diey_app/presentation/widgets/recipe_category.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});
  final List<Recipe> recipes = [
    Recipe(name: "بيتزا للفطار", image: "images/pizza.jpg", onTap: () {}),
    Recipe(
      name: "فاصوليا باللحم",
      image: "images/keto-green-beans.jpg",
      onTap: () {},
    ),
    Recipe(
      name: "كوكيز كيتو ",
      image: "images/15-Featured-healthy.jpg",
      onTap: () {},
    ),
    Recipe(name: "فاهيتا لحم", image: "images/fahita.jpg", onTap: () {}),
    Recipe(name: "خبز سمسم ", image: "images/khobz.jpg", onTap: () {}),
    Recipe(name: "خبز قريش", image: "images/khobzkresh.jpg", onTap: () {}),
    Recipe(name: "بشاميل كيتو", image: "images/photo.jpg", onTap: () {}),
    Recipe(name: "مسقعه كيتو", image: "images/meskaa.jpg", onTap: () {}),
    Recipe(name: "محشي كيتو", image: "images/mahshi.jpg", onTap: () {}),
    Recipe(name: "كريب حلو", image: "images/crepe.jpg", onTap: () {}),
    Recipe(name: " كفتة لحم", image: "images/kofta.jpg", onTap: () {}),
    Recipe(name: "كيك شكولاتة", image: "images/Cake_1.webp", onTap: () {}),
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
