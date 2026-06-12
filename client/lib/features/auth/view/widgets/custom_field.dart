import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String labelText;
  final bool isObscureText;

  const CustomField({
    super.key,
    required this.labelText,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}