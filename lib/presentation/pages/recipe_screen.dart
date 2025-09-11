import 'package:diey_app/presentation/widgets/home_category.dart';
import 'package:diey_app/presentation/widgets/recipe_category.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("وصفات ")),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          RecipeCategory(
            recipeName: "بيتزا للفطار",
             recipeImage:"images/pizza.jpg",
             onTap: () {
               
             },
             ),
          
          
        ],
      ),
    );
  }
}
