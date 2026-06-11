import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String labelText;

  const CustomField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}