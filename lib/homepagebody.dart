import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Today's Lessons
          Row(),
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