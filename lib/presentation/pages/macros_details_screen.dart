import 'package:diey_app/presentation/widgets/custom_button.dart';
import 'package:diey_app/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class MacrosDetailsScreen extends StatelessWidget {
  const MacrosDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" اعرف نسبك ")
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(".. لمعرفة سعراتك و نسبك من البروتين والدهون و الكاربوهيدرات "),
          Text(" دخل سعرات ثباتك اللي حسبتها"),
          CustomTextField(
            keyboardType: TextInputType.number,
            labelText: "سعراتك كام ",
            hintText: "أدخل سعرات ثباتك "),
            CustomButton(text: "احسب", 
            onTap: (){

            })
        ],
        
      ),
      );
  }
}
