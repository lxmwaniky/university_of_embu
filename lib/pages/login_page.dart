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
                padding: EdgeInsets.all(5),
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

Future<void> _signInWithGoogle(BuildContext context) async {
  try {
    // Initialize GoogleSignIn
    final GoogleSignIn googleSignIn = GoogleSignIn();

    // Start the Google sign-in process
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      // Check if the email has the required domain
      if (googleSignInAccount.email?.endsWith('@student.embuni.ac.ke') ??
          false) {
        // Obtain the authentication credentials for the signed-in user
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        // Create a credential from the access token and ID token
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        // Sign in to Firebase with the Google credentials
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        // If sign-in is successful, navigate to the HomePage
        if (userCredential.user != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      } else {
        // Throw an error if the email doesn't have the required domain
        throw Exception('Only @student.embuni.ac.ke accounts are allowed.');
      }
    }
  } catch (e) {
    print('Error signing in with Google: $e');
    // Handle sign-in errors
  }
}
