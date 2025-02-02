import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobpro_p3_input_profile/profile_body_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        title: Text(
          'Profil',
          style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 72, 72, 72),
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.arrow_back)),

        centerTitle: true, // biar ditengah title nya
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 72, 72, 72),
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: const SingleChildScrollView(child: ProfileBodyScreen()),
      //widget buatan sendiri
    );
  }
}
