import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home: DiscussionForumScreen(),
  ));
}


class DiscussionForumScreen extends StatelessWidget {
  const DiscussionForumScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00BF63),
        automaticallyImplyLeading: false, // Remove the default back arrow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(width: 8),
            const Text(
              'Discussion Forum',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Center(
              child: Container(
                width: 384,
                decoration: BoxDecoration(
                  color: const Color(0xFF1791C8),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Effects of Climate Change',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Add new post action
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 16, // Adjust icon size to fit the button
                          ),
                          label: const Text(
                            'Add new post',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  12, // Adjust text size to fit the button
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: const Size(
                                100, 24), // Adjust size to fit the form
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 136,
                        width: 305,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discussion list',
                              style: TextStyle(
                                color: Color(0xFF00BF63),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Flexible(
                              child: Text(
                                '1. Latest climate science\n'
                                '2. Sustainable living\n'
                                '3. Climate policy\n',
                                style: TextStyle(
                                  color: Color(0xFF00BF63),
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 165,
                        width: 305,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/14.png', // Replace with your image asset path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'The forum provides a dedicated space for users to engage in thoughtful conversations about the pressing global issue of climate change.',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 31,
                              width: 31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Center(
                                // Center the icon within the container
                                child: IconButton(
                                  onPressed: () {
                                    // Like action
                                  },
                                  icon: const Icon(
                                    Icons.thumb_up,
                                    color: Colors.black,
                                  ),
                                  iconSize: 20,
                                ),
                              ),
                            ),
                            const Text(
                              'Like',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 31,
                              width: 31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Center(
                                // Center the icon within the container
                                child: IconButton(
                                  onPressed: () {
                                    // Comment action
                                  },
                                  icon: const Icon(
                                    Icons.comment,
                                    color: Colors.black,
                                  ),
                                  iconSize: 20,
                                ),
                              ),
                            ),
                            const Text(
                              'Comment',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 31,
                              width: 31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Center(
                                // Center the icon within the container
                                child: IconButton(
                                  onPressed: () {
                                    // Repost action
                                  },
                                  icon: const Icon(
                                    Icons.repeat,
                                    color: Colors.black,
                                  ),
                                  iconSize: 20,
                                ),
                              ),
                            ),
                            const Text(
                              'Repost',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 31,
                              width: 31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Center(
                                // Center the icon within the container
                                child: IconButton(
                                  onPressed: () {
                                    // Share action
                                  },
                                  icon: const Icon(
                                    Icons.share,
                                    color: Colors.black,
                                  ),
                                  iconSize: 20,
                                ),
                              ),
                            ),
                            const Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle, // Make it circular
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profile.png', // Replace with your profile image asset path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 72, // Increased height
                            decoration: BoxDecoration(
                              color: Colors.white, // Changed to white
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: const TextField(
                              style: TextStyle(
                                  color: Color(0xFF00BF63)), // Text color green
                              decoration: InputDecoration(
                                hintText: 'Add your comment...',
                                hintStyle: TextStyle(
                                    color:
                                        Color(0xFF00BF63)), // Hint color green
                                border: InputBorder.none,
                              ),
                              maxLines: null,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 36,
                          width: 62,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Post action
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Post',
                              style: TextStyle(
                                color: Color(0xFF1791C8),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

