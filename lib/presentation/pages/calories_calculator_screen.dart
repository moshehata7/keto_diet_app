import 'package:diey_app/calories_cubit/calories_cubit.dart';
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
  final List<String> activities = ["نشاط خفيف", "نشاط متوسط", "نشاط عالي"];
  final List<String> genders = ["ذكر", "أنثى"];

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController ageController = TextEditingController(); 


  String? selectedActivity;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("احسب سعراتك"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              controller: heightController,
              hintText: "طولك بالمتر",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 15),

            CustomTextField(
              controller: weightController,
              hintText: "وزنك بالكيلو جرام",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller:ageController ,
              hintText: "عمرك",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 15),

            CustomDropDown(
              labelText: "نشاطك",
              value: selectedActivity,
              items: activities
                  .map((option) =>
                      DropdownMenuItem(value: option, child: Text(option)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedActivity = value;
                });
              },
            ),
            const SizedBox(height: 15),

            CustomDropDown(
              labelText: "الجنس",
              value: selectedGender,
              items: genders
                  .map((option) =>
                      DropdownMenuItem(value: option, child: Text(option)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),
            const SizedBox(height: 20),

            CustomButton(
              text: "احسب",
              onTap: () {
                final height = double.tryParse(heightController.text);
                final weight = double.tryParse(weightController.text);
                final age = int.tryParse(ageController.text);


                if (height != null &&
                    weight != null &&
                    age != null&&
                    selectedActivity != null &&
                    selectedGender != null) {
                 BlocProvider.of<CaloriesCubit>(context).calculateCalories(
                      height: height * 100, 
                      weight: weight,
                      age: age,
                      gender: selectedGender!,
                      activity: selectedActivity!,
                    );
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("من فضلك ادخل كل البيانات"),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
