import 'package:diey_app/models/recipe_model.dart';
import 'package:diey_app/presentation/widgets/recipe_category.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});
  final List<Recipe> recipes = [
    Recipe(name: "بيتزا للفطار", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "بشاميل كيتو", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "شاورما  ", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "سلطة صحية", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "كريب كيتو", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "كفتة مشوية", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "فراخ بالزبدة", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "بيض أومليت", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "بيض أومليت", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "بيض أومليت", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "بيض أومليت", image: "images/pizza.jpg", onTap: () {}),
    Recipe(name: "بيض أومليت", image: "images/pizza.jpg", onTap: () {}),
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
