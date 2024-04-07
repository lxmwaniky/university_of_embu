import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  Widget buildInfoSection({
  required IconData icon,
  required String title,
  Widget? content,
}) {
  return Container(
    height: 200,
    width: 350,
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.yellowAccent[100],
    ),
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.grey[700],
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 5),
        if (content != null) content,
      ],
    ),
  );
}