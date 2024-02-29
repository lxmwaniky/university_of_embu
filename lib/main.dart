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
            'University of Embu',
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
              ),
              ListTile(
                title: Text('Timetable'),
                leading: Icon(Icons.calendar_today),
              ),              
              ListTile(
                title: Text('Fees'),
                leading: Icon(Icons.monetization_on),
              ),
              ListTile(
                title: Text('Reporting'),
                leading: Icon(Icons.report),
              ),
              ListTile(
                title: Text('Units'),
                leading: Icon(Icons.book),
              ),
              ListTile(
                title: Text('Examinations'),
                leading: Icon(Icons.school),
              ),
              ListTile(
                title: Text('Hostel Booking'),
                leading: Icon(Icons.hotel),
              ),
              ListTile(
                title: Text('Evaluation'),
                leading: Icon(Icons.rate_review),
              ),
              ListTile(
                title: Text('LMS'),
                leading: Icon(Icons.computer),
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
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
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Timetable',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'Profile',
              ),
          ],
        ),
        ),
    );
  }
}