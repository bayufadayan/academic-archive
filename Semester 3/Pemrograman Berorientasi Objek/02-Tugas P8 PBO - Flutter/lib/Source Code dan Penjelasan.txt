//Muhamad Bayu Fadayan
//065121100
//Kelas D

//Flutter adalah aplikasi berbasis widget. Library/package widget yang digunakan adalah material.dart
//biasanya muncul otomatis
import 'package:flutter/material.dart';

//Main adalah fungsi yang akan dijalankan oleh program
void main() {
  //runApp merupakan sebuah function
  //MyApp merupakan sebuah class
  //didalam kurung runApp merupakan widget
  runApp(const MyApp());
}

//sebuah class yang mengambil warisan dari StatelessWidget = dari library material.dart
class MyApp extends StatelessWidget {
  //MyApp sebagai konstanta
  const MyApp({super.key});

  //Kata yang akan muncul pada title jika di run
  static const String _title = "PAKUAN MART ONLINE";

  //Override sendiri adalah sebuah konsep dalam OOP dimana method
  //pada child class memiliki implementasi yang berbeda daripada parent class.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      //memilih warna tema
      theme: ThemeData(primarySwatch: Colors.blue),
      //Scaffold adalah widget utama untuk membuat sebuah halaman pada flutter,
      //scaffold ini memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, Body, dll
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        //sesuatu yang akan dimunculkan pada bagian body, dan letaknya di tengah (center)
        body: const Center(
            child: Text(
                "MUHAMAD BAYU FADAYAN  \n 065121100  \n KELAS D  \n FLUTTER APP  \n SHORT TEST PBO  \n\n\n Managed by: Asprak PIK")),
      ),
    );
  }
}
