import 'package:flutter/material.dart';

void main()
{
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University of Embu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'UoEm Student\'s Portal',
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          width: 250.0,
          child: ListView(
            children: const <Widget> [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  accountName: Text('Alex Mwaniki Nyambura'),
                  accountEmail: Text('27465@student.embuni.ac.ke'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  // TODO: Implement onTap functionality for Home
                },
              ),
              ListTile(
                title: Text('Timetable'),
                leading: Icon(Icons.calendar_today),
                onTap: () {
                  // TODO: Implement onTap functionality for Timetable
                },
              ),              
              ListTile(
                title: Text('Fees'),
                leading: Icon(Icons.monetization_on),
                onTap: () {
                  // TODO: Implement onTap functionality for Fees
                },
              ),
              ListTile(
                title: Text('Reporting'),
                leading: Icon(Icons.report),
                onTap: () {
                  // TODO: Implement onTap functionality for Reporting
                },
              ),
              ListTile(
                title: Text('Units'),
                leading: Icon(Icons.book),
                onTap: () {
                  // TODO: Implement onTap functionality for Units
                },
              ),
              ListTile(
                title: Text('Examinations'),
                leading: Icon(Icons.school),
                onTap: () {
                  // TODO: Implement onTap functionality for Examinations
                },
              ),
              ListTile(
                title: Text('Hostel Booking'),
                leading: Icon(Icons.hotel),
                onTap: () {
                  // TODO: Implement onTap functionality for Hostel Booking
                },
              ),
              ListTile(
                title: Text('Evaluation'),
                leading: Icon(Icons.rate_review),
                onTap: () {
                  // TODO: Implement onTap functionality for Evaluation
                },
              ),
              ListTile(
                title: Text('LMS'),
                leading: Icon(Icons.computer),
                onTap: () {
                  // TODO: Implement onTap functionality for LMS
                },
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () {
                  // TODO: Implement onTap functionality for Logout
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              onTap: () {
                // TODO: Implement onTap functionality for Home in BottomNavigationBar
              },
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Timetable',
              onTap: () {
                // TODO: Implement onTap functionality for Timetable in BottomNavigationBar
              },
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              onTap: () {
                // TODO: Implement onTap functionality for Notifications in BottomNavigationBar
              },
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'Profile',
              onTap: () {
                // TODO: Implement onTap functionality for Profile in BottomNavigationBar
              },
            ),
          ],
        ),
      ),
    );
  }
}