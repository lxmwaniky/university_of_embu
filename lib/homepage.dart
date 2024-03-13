import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: const Text(
          'University of Embu',
          style: TextStyle(),
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[200],
        width: 200,


      ),
    );
  }
}