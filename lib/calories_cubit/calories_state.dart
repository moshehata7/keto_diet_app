part of 'calories_cubit.dart';

@immutable
sealed class CaloriesState {}

final class CaloriesInitial extends CaloriesState {}

final class CaloriesCalculated extends CaloriesState {
  final CaloriesModel model;
  CaloriesCalculated(this.model);
}
