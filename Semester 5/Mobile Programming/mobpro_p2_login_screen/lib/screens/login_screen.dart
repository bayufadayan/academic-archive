import 'package:flutter/material.dart';
import 'package:mobpro_p2/screens/login_body_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 72, 72, 72),
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: const SingleChildScrollView(child: LoginBodyScreen()),
    );
  }
}
