import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Today's events
        const ListTile(
          title: Text('Today\'s Events'),
        ),
        // Event 1
        ListTile(
          title: const Text('Event 1'),
          subtitle: const Text('Event 1 description'),
          onTap: () {
            // Navigate to event 1 details
          },
        ),
        // Event 2
        ListTile(
          title: const Text('Event 2'),
          subtitle: const Text('Event 2 description'),
          onTap: () {
            // Navigate to event 2 details
          },
        ),
        // Event 3
        ListTile(
          title: const Text('Event 3'),
          subtitle: const Text('Event 3 description'),
          onTap: () {
            // Navigate to event 3 details
          },
        ),
        
      ],
    );
  }
}