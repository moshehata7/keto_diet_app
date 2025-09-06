import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          color: Colors.blueAccent,
          height: 50,
          width: 100,
          child: Center(
            child: Text("احسب",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}