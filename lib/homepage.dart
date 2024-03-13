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
        backgroundColor: Colors.green[300],
        width: 220,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Alex Mwaniki Nyambura'),
              accountEmail: const Text('27465@student.embuni.ac.ke'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/alex.png',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[300],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            
          ],
        ),
      ),
    );
  }
}