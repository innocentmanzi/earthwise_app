import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Add this import

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create new account',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                hintText: 'Enter your full name...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email address',
                hintText: 'Enter your email...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm password',
                hintText: 'Confirm your password...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement signup logic here
              },
              child: const Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFF00BF63), // Set background color to #00BF63
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Login',
                    style: const TextStyle(
                      color: Color(0xFF1791C8),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context); // Navigate back to login screen
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
