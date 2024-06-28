import 'package:flutter/material.dart';
import '/screens/ar_experience_screen.dart';


class ARVisualizationsScreen extends StatelessWidget {
  const ARVisualizationsScreen({Key? key}) : super(key: key);


  Widget _buildSmallEllipse(Color color) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00BF63),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 75,
              height: 30,
              margin: const EdgeInsets.all(4.0),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                icon: const Icon(Icons.arrow_back, color: Color(0xFF00BF63)),
                label: const Text(
                  'Back',
                  style: TextStyle(color: Color(0xFF00BF63)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Spacer(),
            const Text(
              'AR Visualizations',
              style: TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Container(width: 66),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: screenWidth * 0.7,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Text(
                  'Explore AR Visualization',
                  style: TextStyle(
                    color: Color(0xFF00BF63),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.9,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1791C8),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Discover the power of augmented reality with Earthwise! Our AR Experience Launch feature immerses you in the real-world impacts of climate change and wildlife conservation.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ARExperienceScreen()),
                  );
                },
                child: Container(
                  width: screenWidth * 0.55,
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00BF63),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: const Text(
                    'Start AR Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.6,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Text(
                  'Educational overlays:',
                  style: TextStyle(
                    color: Color(0xFF1791C8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.95,
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Text(
                  'Experience the reality of climate change like never before with Earthwise’s AR Visualizations. Our cutting-edge augmented reality feature brings the effects of environmental degradation directly to your surroundings.\n\nSee the stark contrast of lush forests transforming into barren lands due to deforestation, visualize rising sea levels encroaching on coastal areas, and observe the decline in wildlife populations right where you stand.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenWidth * 0.20,
                    height: screenWidth * 0.20 * (45 / 120),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/6.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.20,
                    height: screenWidth * 0.20 * (45 / 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/7.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.20,
                    height: screenWidth * 0.20 * (45 / 90),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/8.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.20,
                    height: screenWidth * 0.20 * (45 / 95),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/9.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth * 0.045,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xFF00BF63),
                        borderRadius: BorderRadius.circular(2.5),
                      ),
                    ),
                    const SizedBox(width: 10),
                    _buildSmallEllipse(const Color(0xFF00BF63)),
                    const SizedBox(width: 5),
                    _buildSmallEllipse(const Color(0xFF00BF63)),
                    const SizedBox(width: 5),
                    _buildSmallEllipse(const Color(0xFF00BF63)),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Share:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    'assets/images/facebook_earthwise_app.png',
                    width: 20,
                    height: 19.92,
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    'assets/images/instagram_earthwise_app.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    'assets/images/linkedin_earthwise_app.png',
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    'assets/images/twitter_earthwise_app.png',
                    width: 28,
                    height: 28,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Center(child: Text('')),
            ],
          ),
        ),
      ),
    );
  }
}

