import 'package:flutter/material.dart';
import 'package:university_of_embu/forgotpassword.dart';
import 'package:university_of_embu/homepage.dart';

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
      child: const Text('Welcome'),
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
            Text('Login to the Portal',
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
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Email',
                  hintText: 'Enter Student Email',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 330,
              child: TextField(
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: ()
            {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            }, 
            child: const Text(
              'Login',
            ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
                    ),
                );
              },
              child: const Text('Forgot password?'),
            ),
            TextButton(onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const SignUp(),
                  ),
              );
            }, 
            child: const Text('Create an Account'),
            )
          ],
        ),
      ),
    );
  }
}
