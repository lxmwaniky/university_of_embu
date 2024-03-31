import 'package:flutter/material.dart';
import 'package:university_of_embu/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University of Embu Students Portal',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}