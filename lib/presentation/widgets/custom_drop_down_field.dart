import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.items,
    required this.labelText,
    required this.value,
    required this.onChanged,
  });

  final List<DropdownMenuItem<String>> items;
  final String labelText;
  final String? value; 
  final ValueChanged<String?> onChanged; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
        value: value,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
