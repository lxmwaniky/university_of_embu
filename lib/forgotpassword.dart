import 'package:flutter/material.dart';
import 'package:university_of_embu/loginpage.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Recover Password',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.grey[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/logo.png',
              width: 70,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  labelText: 'Student Email',
                  hintText: 'Enter your recovery email',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: ()
            {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            }, 
            child: const Text(
              'Reset Password',
            ),
            ),
            TextButton(onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                  ),
              );
            }, 
            child: const Text('Back to Login'),
            )
          ],
        ),
      ),
    );
  }
}
