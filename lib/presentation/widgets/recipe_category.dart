import 'package:flutter/material.dart';

class RecipeCategory extends StatelessWidget {
  const RecipeCategory({
    super.key,
    required this.recipeName,
    required this.recipeImage, required this.onTap,
  });
  final String recipeName;
  final String recipeImage;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Positioned(
                top: 155,
                left: 55,
                child: Text(
                  recipeName,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Image.asset(recipeImage),
            ],
          ),
        ),
      ),
    );
  }
}
