import 'package:flutter/material.dart';
import '../widgets/custom_field.dart';
import '../widgets/auth_gradient_button.dart';
import 'package:client/core/theme/app_pallete.dart';

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
            children: [
              const SizedBox(height: 100),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const CustomField(labelText: 'Name'),
              const SizedBox(height: 15),
              const CustomField(labelText: 'Email'),
              const SizedBox(height: 15),
              const CustomField(labelText: 'Password', isObscureText: true),
              const SizedBox(height: 20),
              AuthGradientButton(buttonText: 'Sign Up', onTap: () {}),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    WidgetSpan(
                      child: ShaderMask(
                        shaderCallback: (bounds) {
                          return const LinearGradient(
                            colors: [Pallete.gradient1, Pallete.gradient2],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}