import 'package:flutter/material.dart';
import 'package:flutter_application_4/get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Sayah",
      initialRoute: '/',
            routes: {'/': (context) => GetStarted()},
      debugShowCheckedModeBanner: false,
    );
  }
}

