import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Today's Lessons
          Row(
            children: [
              Text(
                'Today\'s Lessons',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Table(
                children: [
                  TableRow(
                    children: [
                      Text('Unit Code'),
                      Text('Time'),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('CS101'),
                      Text('9:00 AM'),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('MATH202'),
                      Text('11:00 AM'),
                    ],
                  ),
                  // Add more unit codes and times here
                ],
              ),
            ],
          ),
          // Assignments
          Row(),
          // Fee Balance
          Row(),
          // Units Registered
          Row(),
          // Class Timetable
          Row(),
          // Exam Timetable
          Row(),
          // Results
          Row(),
        ],
      ),
    );
  }
}