import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                child: Text(
                  'Student Portal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
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