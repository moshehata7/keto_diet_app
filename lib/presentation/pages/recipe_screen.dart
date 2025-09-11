import 'package:diey_app/presentation/widgets/home_category.dart';
import 'package:diey_app/presentation/widgets/recipe_category.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});
  final List<RecipeCategory> recipes = [
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
    RecipeCategory(
      recipeName: "recipeName",
      recipeImage: "recipeImage",
      onTap: () {},
    ),
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
          return recipes[index];
        },
      ),
    );
  }
}
