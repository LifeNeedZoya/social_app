import 'package:flutter/material.dart';
import 'package:social_app/features/auth/presentation/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Icon(
                  Icons.lock_open_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 50),
                Text(
                  "Welcome back, you've been missed",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(height: 25),
                MyTextField(
                    controller: emailController,
                    hintText: "email",
                    obscureText: false),
                const SizedBox(height: 10),
                MyTextField(
                    controller: pwController,
                    hintText: "password",
                    obscureText: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
