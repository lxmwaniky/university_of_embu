import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_of_embu/auth/auth_services.dart';
import 'package:university_of_embu/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<void> _signInWithGoogle() async {
    try {
      // Sign in with Google
      await AuthService().signInWithGoogle();

      // If sign-in is successful, navigate to HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } catch (e) {
      // Handle sign-in error
      print('Error signing in with Google: $e');
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to sign in with Google. Please try again.'),
        ),
      );
    }
  }

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
              onTap: _signInWithGoogle,
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
