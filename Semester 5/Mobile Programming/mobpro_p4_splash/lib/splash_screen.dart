import 'package:flutter/material.dart';
import 'package:mobpro_p4_profile_part2/profile_screen.dart';
import 'package:mobpro_p4_profile_part2/widget/logo_unpak.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatelanding();
  }

  _navigatelanding() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            LogoUnpak(
                isColored:
                    true), //pake widget buatan sendiri namanya logo unpak

            SizedBox(height: 145),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 117, 87, 153),
            ),
            SizedBox(height: 16),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
