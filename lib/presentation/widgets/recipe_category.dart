import 'package:diey_app/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeCategory extends StatelessWidget {
  const RecipeCategory({super.key, required this.recipe});
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: recipe.onTap,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    recipe.name,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  height: 170,
                  width: 230,
                  fit: BoxFit.cover,
                  recipe.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
