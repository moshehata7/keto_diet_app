import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
     this.hight,
     this.width,
    required this.image, required this.onTap,
  });
  final double? hight, width;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
