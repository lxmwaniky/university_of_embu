import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_of_embu/pages/login_page.dart';

class IntroPage extends StatefulWidget {
  IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 900), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'University of Embu',
              style: GoogleFonts.m~(fontSize: 30, fontWeight: FontWeight.bold,),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              './lib/assets/images/University-of-Embu-logo.png',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Student Portal',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 20,),
            LinearProgressIndicator(minHeight: 5, color: Colors.orange,),
          ],
        ),
      ),
    );
  }
}
