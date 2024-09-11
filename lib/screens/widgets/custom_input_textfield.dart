import 'package:flutter/material.dart';
import 'package:gym_tracker_test/app_config/styles.dart';

class CustomInputTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;

  const CustomInputTextfield({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controller,
          decoration:
              customInputDecoration(hintText: hintText, labelText: labelText),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}