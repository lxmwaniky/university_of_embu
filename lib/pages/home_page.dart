import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_of_embu/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: const Text('Student Portal'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue[200],
      ),
      backgroundColor: Colors.lightBlue[300],
      body: SizedBox(
        height: 200,
        width: 370,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildInfoSection(
                icon: Icons.person,
                title: 'Welcome',
                content: user != null
                    ? Text('${user.displayName}')
                    : const Text('Comrade'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoSection({
  required IconData icon,
  required String title,
  Widget? content,
}) {
  return Container(
    height: 200,
    width: 350,
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.yellowAccent[100],
    ),
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.grey[700],
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 5),
        if (content != null) content,
      ],
    ),
  );
}
