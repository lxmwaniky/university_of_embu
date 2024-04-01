import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: GoogleFonts.aboreto(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              './lib/assets/images/University-of-Embu-logo.png',
              height: 170,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset('./lib/assets/images/google-logo.png',
                      height: 20,),
                  Text(
                    'Login with Student Email',
                    style: GoogleFonts.aboreto(
                        fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
