import 'package:flutter/material.dart';
import 'package:mobpro_p2/screens/register_screen.dart';
import 'package:mobpro_p2/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Training',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
