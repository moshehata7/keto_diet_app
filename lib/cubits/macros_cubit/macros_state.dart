import 'package:flutter/material.dart';

@immutable
abstract class MacrosState {}

class MacrosInitial extends MacrosState {}

class MacrosCalculated extends MacrosState {
  final double protein;
  final double carbs;
  final double fat;

  MacrosCalculated({
    required this.protein,
    required this.carbs,
    required this.fat,
  });
}
