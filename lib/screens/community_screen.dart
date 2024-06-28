import 'package:flutter/material.dart';
import '/screens/discussion_forum_screen.dart';


class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Community Engagement',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00BF63),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Events Map',
                    style: TextStyle(
                      color: Color(0xFF00BF63),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Engage with local environmental events and forums.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: constraints.maxHeight * 0.3,
                  child: Image.asset(
                    'assets/images/1.png', // Ensure the correct path
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Discussion Forum',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Text(
                    'Explore wildlife conservation companies:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Text(
                    'Join the Earthwise community today and connect with like-minded individuals passionate about making a positive impact on our planet!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Text(
                    'Use the space below to start a conversation, share your thoughts, and collaborate on sustainable solutions.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Type your thoughts here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.2,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00BF63),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Send',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Add some space between buttons
                    Container(
                      width: constraints.maxWidth * 0.3,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1791C8),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const DiscussionForumScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Discuss',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Text(
                    'Top companies:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.4,
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFC0D38),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/2.png', // Ensure the correct path
                          width: constraints.maxWidth * 0.2,
                          height: 41,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.45,
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1791C8),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/3.png', // Ensure the correct path
                          width: constraints.maxWidth * 0.25,
                          height: 44,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.25,
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8D106),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                          'African Parks',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.35,
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD800DC),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/4.png', // Ensure the correct path
                            width: 43,
                            height: 48,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 4),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'WCS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Rwanda',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.3,
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1791C8),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Inspire',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

