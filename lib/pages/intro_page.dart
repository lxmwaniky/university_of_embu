import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('University of Embu',),
            Image.asset('./lib/assets/images/University-of-Embu-logo.png',),
            Text('Student Portal',),
          ],
        ),
      ),
    );
  }
}
