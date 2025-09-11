import 'package:bloc/bloc.dart';
import 'package:diey_app/models/calories_model.dart';
import 'package:meta/meta.dart';

part 'calories_state.dart';

class CaloriesCubit extends Cubit<CaloriesState> {
  CaloriesCubit() : super(CaloriesInitial());

  void calculateCalories({
    required double height,
    required double weight,
    required int age,
    required String gender,
    required String activity,
  }) {
    double bmr;
    if (gender == "ذكر") {
      bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }

    double multiplier;
    switch (activity) {
      case "نشاط خفيف":
        multiplier = 1.375;
        break;
      case "نشاط متوسط":
        multiplier = 1.55;
        break;
      case "نشاط عالي":
        multiplier = 1.725;
        break;
      default:
        multiplier = 1.2;
    }

    final calories = bmr * multiplier;

    final caloriesModel = CaloriesModel(
      height: height,
      weight: weight,
      age: age,
      gender: gender,
      activity: activity,
      calories: calories,
    );

    emit(CaloriesCalculated(caloriesModel));
  }
}
