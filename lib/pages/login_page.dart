import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_of_embu/pages/home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, Student',
              style: GoogleFonts.roboto(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
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
            GestureDetector(
              onTap: () {
                _signInWithGoogle(context);
              },
              child: Container(
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      './lib/assets/images/google-logo.png',
                      height: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign in with School Email',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
