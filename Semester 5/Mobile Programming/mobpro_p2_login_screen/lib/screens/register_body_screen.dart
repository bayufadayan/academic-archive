import 'package:flutter/material.dart';

class RegisterScreen2 extends StatelessWidget {
  const RegisterScreen2({super.key});


  @override
Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        
        
        leading: IconButton(onPressed: () {
          Navigator.pushNamed(context, '/');
        }, icon: const Icon(Icons.arrow_back)),
        
        
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 72, 72, 72),
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),


      body:const SingleChildScrollView(child: SizedBox()),


      
    );
  }
}
