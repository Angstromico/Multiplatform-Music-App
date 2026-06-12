import 'package:flutter/material.dart';
import '../widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 100),
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              CustomField(labelText: 'Name'),
              SizedBox(height: 15),
              CustomField(labelText: 'Email'),
              SizedBox(height: 15),
              CustomField(labelText: 'Password', isObscureText: true),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}