import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginBodyScreen extends StatelessWidget {
  const LoginBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var detailLeft = GoogleFonts.poppins(
        color: const Color.fromARGB(255, 0, 0, 0),
        fontSize: 13.0,
        fontWeight: FontWeight.w400);
    var detailRight = GoogleFonts.poppins(
        color: const Color.fromARGB(255, 145, 145, 145),
        fontSize: 13.0,
        fontWeight: FontWeight.w400);
    return SizedBox(
      width: double.infinity,
      height: 900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/logo_unpak_ungu_re.png'),
          const SizedBox(height: 26),
          Container(
            padding: const EdgeInsets.only(left: 26.0, right: 185.0),
            child: Row(children: [
              Text(
                "Masuk",
                style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 31.0, bottom: 8.0, left: 26.0),
            child: Row(children: [
              Text("Alamat Email", style: detailLeft),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(width: 310.0)),
                hintText: 'Masukkan alamat Email UNPAK',
                hintStyle: detailRight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
            child: Row(children: [
              Text("Kata Sandi", style: detailLeft),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 51.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  hintText: 'Masukkan Kata Sandi Anda',
                  hintStyle: detailRight),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 87, 153),
              minimumSize: const Size(360.0, 50.0),
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
            child: const Text('Masuk', style: TextStyle(color: Colors.white),),
          ),
          const SizedBox(height: 26),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pemulihan');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              foregroundColor: const Color.fromARGB(255, 117, 87, 153),
              padding: const EdgeInsets.only(left: 124.0, right: 124.0),
              elevation: 0.0,
            ),
            child: const Text('Lupa kata sandi?'),
          ),
        ],
      ),
    );
  }
}
