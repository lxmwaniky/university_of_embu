import 'package:flutter/material.dart';
import 'package:university_of_embu/homepagebody.dart';
import 'package:university_of_embu/loginpage.dart';

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
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.notifications,
            size: 30,
            ),
            ),
        ],
      ),
      body: const HomePageBody(),
      drawer: Drawer(
        backgroundColor: Colors.green[200],
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
                color: Colors.green[200],
              ),
            ),

            //Home
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(
                  context, MaterialPageRoute(
                    builder: (context) => const HomePage(),
                    ),
                  );
              },
            ),
            //Fees
            ListTile(
              leading: const Icon(Icons.paid),
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
              leading: const Icon(Icons.today),
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
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                    ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}