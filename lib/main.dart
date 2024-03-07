import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'University of Embu Students Portal',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
    const SplashScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.jpeg'),
              const SizedBox(height: 30),
              Text(
                'University of Embu Students Portal', 
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)
                ),
              const SizedBox(height: 20),
              const CircularProgressIndicator(),
              const Text('Welcome...'),
              const LoginPage(),
            ],
          ),
        ),
      );
    }
  }

  class LoginPage extends StatelessWidget {
    const LoginPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('University of Embu'),
      ),
    );
  }
}