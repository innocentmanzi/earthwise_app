import 'package:flutter/material.dart';
import '/screens/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 15,
                  width: 8,
                ),
                _buildTopButton('Settings', () {
                  // Navigate to the SettingsScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                }),
                const SizedBox(
                  height: 15,
                  width: 8,
                ),
              ],
            ), // Small space between buttons and circles
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/images/profile.png'), // Use profile.png from assets folder
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Color(0xFF1791C8),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            _buildProfileItem('Full Name', 'Innocent Manzi'),
            const SizedBox(height: 8),
            _buildProfileItem('Email', 'innocent23@gmail.com'),
            const SizedBox(height: 8),
            _buildProfileItem('City', 'Kigali'),
            const SizedBox(height: 8),
            _buildProfileItem('Country', 'Rwanda'),
            const SizedBox(height: 8),
            _buildProfileItem('Your interest', 'Wildlife conservation'),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle log out action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00BF63),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                '$title: ',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1791C8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8), // Add space between items
      ],
    );
  }

  Widget _buildBlueCircle() {
    return const Icon(
      Icons.circle,
      size: 10,
      color: Color(0xFF1791C8),
    );
  }

  Widget _buildTopButton(String text, VoidCallback onPressed) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00BF63),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12, // Smaller text
          ),
        ),
      ),
    );
  }
}
