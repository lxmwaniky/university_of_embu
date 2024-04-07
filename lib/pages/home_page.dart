import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: const Text('Comrade Portal'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
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
