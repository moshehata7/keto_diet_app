import 'package:diey_app/presentation/widgets/custom_button.dart';
import 'package:diey_app/presentation/widgets/custom_drop_down_field.dart';
import 'package:diey_app/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CaloriesCalculatorScreen extends StatelessWidget {
   CaloriesCalculatorScreen({super.key});
  final List<String> activities = [" نشاط خفيف", "نشاط متوسط ", " نشاط عالي"];
  final List<String> gender = ["ذكر", " أنثى"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("احسب سعراتك "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(onSubmitted: (value){}, 
            hintText: "طولك بالمتر",
            keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(onSubmitted: (value){}, 
            hintText: "وزنك بالكيلو جرام ",
            keyboardType: TextInputType.number,
            ),
              SizedBox(
              height: 15,
            ),
            DropDownActivities(
              labelText: "نشاطك ",
              items:
            activities.map((option) {
          return DropdownMenuItem(value: option, child: Text(option));
        }).toList(),),
          SizedBox(
              height: 15,
            ),
            DropDownActivities(
              labelText: "الجنس",
              items:
            gender.map((option) {
          return DropdownMenuItem(value: option, child: Text(option));
        }).toList(),),
          SizedBox(
              height: 15,
            ),
          CustomButton()
          ],
        ),
      ),
    );
  }
}