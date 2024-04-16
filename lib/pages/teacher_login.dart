import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the width for the buttons
    final buttonWidth = MediaQuery.of(context).size.width / 2 - 32;

    // Define a common TextStyle for the buttons
    final buttonTextStyle = TextStyle(color: Colors.white);
    final buttonContinue = TextStyle(color: Colors.black);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/logo.png',
              width: MediaQuery.of(context).size.width * 0.3,
              height: 80.0,
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Welcome back',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Sign in to Edu Mentor Ai to pick up exactly where you left off.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 32.0),
            Row(
              children: <Widget>[
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[800],
                    ),
                    child: Text('Sign in as Student', style: buttonTextStyle),
                  ),
                ),
                const SizedBox(width: 16.0),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[800],
                    ),
                    child: Text('Sign up as Student', style: buttonTextStyle),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14.0),
            const Text(
              'Login as Mentor',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Email or username',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off, color: Colors.white),
              ),
              obscureText: true,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF00FF0A),
              ),
              child: Text('Continue', style: buttonContinue),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
