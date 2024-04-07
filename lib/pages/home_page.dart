import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:university_of_embu/widgets/info_section.dart';
import 'package:university_of_embu/widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: const Text('Student Portal'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: buildDrawer(context),
      backgroundColor: Colors.lightBlue[300],
      body: SizedBox(
        width: 370,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildInfoSection(
                icon: Icons.book_online,
                title: 'Course',
                content: const Text(
                  'BSc. Information Technology',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              buildInfoSection(
                icon: Icons.money,
                title: 'Fee Balance',
                content: const Text(
                  'Ksh 0.00',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
