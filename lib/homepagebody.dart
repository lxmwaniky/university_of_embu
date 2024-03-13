import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Today's Lessons
          Row(
            children: [
              Text('Today\'s Lessons',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900],
                ),
                textAlign: TextAlign.center,
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