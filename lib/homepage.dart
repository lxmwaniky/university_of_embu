import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text(
          'University of Embu',
          style: TextStyle(),
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[300],
        width: 230,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Alex Mwaniki Nyambura',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  ),
                ),
              accountEmail: const Text(
                '27465@student.embuni.ac.ke',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  )
                ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/alex.png',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[300],
              ),
            ),

            //Home
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
              },
            ),
            //Fees
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('Fees'),
              onTap: () {
              },
            ),
            //Units
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Units'),
              onTap: () {
              },
            ),
            //Timetable
            ListTile(
              leading: const Icon(Icons.timelapse),
              title: const Text('Timetable'),
              onTap: () {
              },
            ),
            //Exam Results
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Examinations'),
              onTap: () {
              },
            ),
            //LMS
            ListTile(
              leading: const Icon(Icons.computer),
              title: const Text('LMS'),
              onTap: () {
              },
            ),
            //Hostel Booking
            ListTile(
              leading: const Icon(Icons.hotel),
              title: const Text('Hostel Booking'),
              onTap: () {
              },
            ),
            //Evaluation
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text('Evaluation'),
              onTap: () {
              },
            ),
            //Reporting
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Reporting'),
              onTap: () {
              },
            ),
            //Logout
            
          ],
        ),
      ),
    );
  }
}