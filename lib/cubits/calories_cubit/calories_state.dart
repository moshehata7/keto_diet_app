part of 'calories_cubit.dart';

@immutable
sealed class CaloriesState {}

final class CaloriesInitial extends CaloriesState {}

final class CaloriesCalculated extends CaloriesState {
  final CaloriesModel caloriesModel;
  CaloriesCalculated(this.caloriesModel);
}
