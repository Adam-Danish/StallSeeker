import 'package:flutter/material.dart';
import 'package:stallseeker/components/my_button.dart';
import 'package:stallseeker/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    /*

    fill out auth

    */

    // navigate to home page
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
      (route) => false, // removes all previous pages
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Center(
            child: Icon(
              Icons.food_bank,
              size: 200,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          // message, app slogan
          Text(
            "StallSeeker",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          // email textfield
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 10),

          // password textfield
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),

          const SizedBox(height: 10),

          // sign in button
          MyButton(text: "Sign In", onTap: login),

          const SizedBox(height: 10),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ), // Text
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ), // Text
              ), // GestureDetector
            ],
          ), // Row
        ],
      ),
    );
  }
}
