import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:university_of_embu/pages/login_page.dart';

const double _drawerWidth = 250;

Widget buildDrawer(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser;
  return Drawer(
        width: 250,
        backgroundColor: Colors.lightBlue[300],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue[400],
              ),
              child: SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: user != null
                          ? NetworkImage(user.photoURL!) as ImageProvider<Object>?
                          : const AssetImage('assets/images/user.png'),
                    ),
                    const SizedBox(height: 10),
                    user != null
                        ? Text(
                            '${user.displayName}',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        : const Text(
                            'Comrade',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                  ],
                ),
              ),
            ),
            // Home
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Fee
            ListTile(
              title: const Text('Fee Records'),
              leading: const Icon(Icons.money),
              onTap: () {},
            ),
            // Timetable
            ListTile(
              title: const Text('Timetable'),
              leading: const Icon(Icons.calendar_today),
              onTap: () {},
            ),
            // Units
            ListTile(
              title: const Text('Units'),
              leading: const Icon(Icons.book),
              onTap: () {},
            ),
            // Exam Results
            ListTile(
              title: const Text('Exam Results'),
              leading: const Icon(Icons.assignment),
              onTap: () {},
            ),
            // LMS
            ListTile(
              title: const Text('L.M.S'),
              leading: const Icon(Icons.computer),
              onTap: () {},
            ),
            // Units Registration
            ListTile(
              title: const Text('Units Registration'),
              leading: const Icon(Icons.edit),
              onTap: () {},
            ),
            // Unit Evaluation
            ListTile(
              title: const Text('Unit Evaluation'),
              leading: const Icon(Icons.rate_review),
              onTap: () {},
            ),
            // Hostel Booking
            ListTile(
              title: const Text('Hostel Booking'),
              leading: const Icon(Icons.hotel),
              onTap: () {},
            ),
            // Logout
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}