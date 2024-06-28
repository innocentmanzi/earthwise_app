import 'package:flutter/material.dart';
import '/screens/cover_screen.dart';
import '/screens/login_screen.dart';
import '/screens/signup_screen.dart';
import '/screens/home_screen.dart';

void main() {
  runApp(EarthwiseApp());
}

class EarthwiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Earthwise',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CoverScreen(),
      routes: {
        '/login': (context) => LoginScreen(), // User Authentication
        '/signup': (context) => SignupScreen(), //Account creation
        '/home': (context) => HomeScreen(), // Landing screen
      },
    );
  }
}
