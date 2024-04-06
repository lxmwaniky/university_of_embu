import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:university_of_embu/auth/auth_services.dart';
import 'package:university_of_embu/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Comrade Portal'),
        actions: [
          IconButton(
            onPressed: () async {
              AuthService authService = AuthService();
              await authService.signOutAndClearCache(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue[200],
      ),
      backgroundColor: Colors.lightBlue[300],
      body: Container(
        child: user != null
            ? Text(
                'Welcome ${user.displayName}',
              )
            : const Text(
                'Welcome, Comrade',
              ),
      ),
    );
  }
}
