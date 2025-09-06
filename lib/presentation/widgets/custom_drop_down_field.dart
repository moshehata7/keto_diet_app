import 'package:flutter/material.dart';

class DropDownActivities extends StatefulWidget {
  const DropDownActivities({super.key, required this.items, required this.labelText});
  final List<DropdownMenuItem<String>> items;
  final String labelText;

  @override
  State<DropDownActivities> createState() => _DropDownActivitiesState();
}

class _DropDownActivitiesState extends State<DropDownActivities> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButtonFormField<String>(
        decoration:  InputDecoration(
          labelText: widget.labelText,
          border: OutlineInputBorder(),
        ),
        value: selectedValue,
        items: widget.items,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
      ),
    );
  }
}
