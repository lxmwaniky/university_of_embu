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

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Account Registration',
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
                  hintText: 'Enter Student Email',
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 330,
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  labelText: 'Password',
                  hintText: 'Enter your Password',
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
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your Password',
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
              'Sign Up',
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
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Registration no.',
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University of Embu'),
      ),
    );
  }
}