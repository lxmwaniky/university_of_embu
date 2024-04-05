import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:university_of_embu/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text('Comrade Portal'),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      backgroundColor: Colors.lightBlue,
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
