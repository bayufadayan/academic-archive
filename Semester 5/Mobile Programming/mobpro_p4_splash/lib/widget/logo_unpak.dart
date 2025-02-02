import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoUnpak extends StatelessWidget {
  const LogoUnpak({super.key, this.isColored = false});

  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(isColored
            ? 'assets/logo_unpak_ungu.png'
            : 'assets/logo_unpak_putih.png'),
        const SizedBox(height: 25.24),
        Text(
          "Universitas Pakuan",
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isColored
                ? const Color.fromARGB(255, 72, 72, 72)
                : const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Text(
          "Unggul, Mandiri & Berkarakter",
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: isColored
                ? const Color.fromARGB(255, 184, 184, 184)
                : const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
}
