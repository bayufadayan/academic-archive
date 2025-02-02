import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmopro/styling/styleing.dart';

class Login_body_screen extends StatelessWidget {
  const Login_body_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Container(
                child: Text(
                  "Masuk",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color.fromARGB(100, 0, 0, 0)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 31,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Container(
                child: Text(
                  'Alamat Email',
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(100, 0, 0, 0)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Masukkan Email Klean",
                  hintStyle: HintTextStyle),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Container(
                child: Text(
                  'Kata Sandi',
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(100, 0, 0, 0)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Masukkan Kata Sandi Klean",
                  hintStyle: HintTextStyle),
            ),
          ),
        ),
        SizedBox(
          height: 51,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text(
            'Masuk',
            style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 255, 255, 1)),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              padding: EdgeInsets.only(left: 124, right: 124),
              elevation: 0),
        ),
        SizedBox(
          height: 26,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text(
              "Lupa Kata si Sandi",
              style: HintTextStyle,
            ))
      ],
    );
  }
}
