import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      child: const Text('Login'),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 70,
            ),
            const SizedBox(height: 20),
            Text('Login to Continue',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            const Text(''),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Registration No.',
                
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}