import 'package:flutter/material.dart';


class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Set the background color of the AppBar
        title: const Text(
          'Event Details',
          style: TextStyle(
              color: Colors.white), // Set the color of the AppBar title
        ),
      ),
      body: Container(
        color: Colors.blue, // Blue background for the entire container
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Climate Change Workshop',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bold black heading
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Date and time: June 15, 2024, 11:00 AM - 3:00 PM',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Location: Green Community Center, KK 127 St, Kigali',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Event Details',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bold black heading
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Join us for a hands-on workshop focused on actionable steps you can take to combat climate change. Learn from experts in the field and connect with like-minded individuals passionate about making a difference.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Agenda',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bold black heading
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  '10:00 AM - 11:00 AM: Introduction and Keynote Address',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const Text(
                  '11:00 AM - 12:30 PM: Breakout Sessions',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const Text(
                  '12:30 PM - 1:30 PM: Lunch Break',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const Text(
                  '1:30 PM - 3:00 PM: Hands-on Activities and Workshops',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const Text(
                  '3:00 PM - 3:55 PM: Q&A and Networking',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const Text(
                  '3:55 - 4:00 PM: Closing Remark',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Speakers/Hosts',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bold black heading
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Dr. Jane Smith - Environmental Scientist',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const Text(
                  'Dr. John Doe - Climate Activist',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Follow us:',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bold black heading
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  '@earthwise',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Red button background
                    ),
                    onPressed: () {
                      // Add your registration logic here
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.white, // White button text
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Additional Information',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bold black heading
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Email us: events@earthwise.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // White text
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Red button background
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white, // White button text
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

