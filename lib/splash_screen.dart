import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import './pages/teacher_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const SignInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Determine the size of the screen
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color(0xFF00FF0A)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: screenSize.height * 0.2),
            Text(
              'Transforming the New You',
              style: GoogleFonts.satisfy(
                // Assuming this font is close to what you want
                textStyle: const TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: screenSize.width *
                      0.3, // Adjust the width of the logo to match your design
                ),
                Text(
                  'Edu Mentor Ai',
                  style: GoogleFonts.merriweather(
                    // Assuming this font is close to what you want
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
                height: screenSize.height *
                    0.1), // Adjust the bottom spacing based on your design needs
          ],
        ),
      ),
    );
  }
}
