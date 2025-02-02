import 'package:flutter/material.dart';
import 'package:mobpro_p5_profile_part3/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Sidebar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contoh Sidebar")
          ,
        ),
        drawer: ChatWidgets.drawer(context),
      )
    );
  }
}
