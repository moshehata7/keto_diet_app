import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.controller , this.keyboardType,   required this.hintText,  this.labelText});
  final String hintText;
  TextInputType? keyboardType;
  TextEditingController? controller;
  final String ? labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        
        controller:controller ,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText:labelText ,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
