import 'package:diey_app/cubits/macros_cubit/macros_cubit.dart';
import 'package:diey_app/cubits/macros_cubit/macros_state.dart';
import 'package:diey_app/presentation/widgets/custom_button.dart';
import 'package:diey_app/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MacrosDetailsScreen extends StatelessWidget {
  MacrosDetailsScreen({super.key});
  final TextEditingController caloriesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" اعرف نسبك ")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(".. لمعرفة سعراتك و نسبك من البروتين والدهون و الكاربوهيدرات "),
          Text(" دخل سعرات ثباتك اللي حسبتها"),
          CustomTextField(
            controller: caloriesController,
            keyboardType: TextInputType.number,
            labelText: "سعراتك كام ",
            hintText: "أدخل سعرات ثباتك ",
          ),
          CustomButton(
            text: "احسب",
            onTap: () {
              final calories = double.tryParse(caloriesController.text);

              if (caloriesController != null) {
                BlocProvider.of<MacrosCubit>(
                  context,
                ).calculateMacros(calories: calories!);
              }
            },
          ),
          BlocBuilder<MacrosCubit, MacrosState>(
  builder: (context, state) {
    if (state is MacrosCalculated) {
      return Column(
        children: [
          Text("البروتين: ${state.protein.toStringAsFixed(1)} كالوري"),
          Text("الكارب: ${state.carbs.toStringAsFixed(1)} كالوري"),
          Text("الدهون: ${state.fat.toStringAsFixed(1)} كالوري"),
        ],
      );
    }
    return SizedBox();
  },
),

        ],
      ),
    );
  }
}
