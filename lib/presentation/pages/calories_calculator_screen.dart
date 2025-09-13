import 'package:diey_app/cubits/calories_cubit/calories_cubit.dart';
import 'package:diey_app/presentation/widgets/custom_button.dart';
import 'package:diey_app/presentation/widgets/custom_drop_down_field.dart';
import 'package:diey_app/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CaloriesCalculatorScreen extends StatefulWidget {
  const CaloriesCalculatorScreen({super.key});

  @override
  State<CaloriesCalculatorScreen> createState() =>
      _CaloriesCalculatorScreenState();
}

class _CaloriesCalculatorScreenState extends State<CaloriesCalculatorScreen> {
  final List<String> activities = [
    "غير نشط",
    "نشاط خفيف",
    "نشاط متوسط",
    "نشاط عالي",
  ];
  final List<String> genders = ["ذكر", "أنثى"];

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  late String selectedActivity;
  late String selectedGender;
  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    ageController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("احسب سعراتك")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              controller: heightController,
              hintText: "طولك (سم)",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),

            CustomTextField(
              controller: weightController,
              hintText: "وزنك بالكيلو جرام",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: ageController,
              hintText: "عمرك",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),

            CustomDropDown(
              labelText: "نشاطك",
              value: selectedActivity,
              items: activities
                  .map(
                    (option) =>
                        DropdownMenuItem(value: option, child: Text(option)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedActivity = value;
                });
              },
            ),
            const SizedBox(height: 10),

            CustomDropDown(
              labelText: "الجنس",
              value: selectedGender,
              items: genders
                  .map(
                    (option) =>
                        DropdownMenuItem(value: option, child: Text(option)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),
            const SizedBox(height: 10),

            CustomButton(
              text: "احسب",
              onTap: () {
                final height = double.tryParse(heightController.text);
                final weight = double.tryParse(weightController.text);
                final age = int.tryParse(ageController.text);

                if (height != null &&
                    weight != null &&
                    age != null &&
                    selectedActivity != null &&
                    selectedGender != null) {
                  BlocProvider.of<CaloriesCubit>(context).calculateCalories(
                    height: height,
                    weight: weight,
                    age: age,
                    gender: selectedGender!,
                    activity: selectedActivity!,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("من فضلك ادخل كل البيانات")),
                  );
                }
              },
            ),
            const SizedBox(height: 20),

            BlocBuilder<CaloriesCubit, CaloriesState>(
              builder: (context, state) {
                if (state is CaloriesCalculated) {
                  return Column(
                    children: [
                      Text(
                        "سعراتك اليومية: ${state.caloriesModel.calories.toStringAsFixed(0)} سعر حراري  ",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
