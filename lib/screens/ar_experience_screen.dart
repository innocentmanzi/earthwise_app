import 'package:flutter/material.dart';


class ARExperienceScreen extends StatelessWidget {
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
              'AR Experience',
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
                  'AR Experience Launch',
                  style: TextStyle(
                    color: Color(0xFF00BF63),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildInfoContainer(
                screenWidth,
                'It is the permanent destruction of forests for other uses. This process involves the clearing, cutting, and removal of trees.',
                'assets/images/deforestation.png',
                'Deforestation',
              ),
              const SizedBox(height: 16),
              _buildInfoContainer(
                screenWidth,
                'Mammals, birds, amphibians, reptiles, fish have seen a devastating 69% drop on average since 1970, according to WWF\'s Living Planet Report (LPR) 2022.',
                'assets/images/populations.png',
                'Wildlife populations',
              ),
              const SizedBox(height: 16),
              _buildInfoContainer(
                screenWidth,
                'Burning fossil fuels is one of the causes of global warming which causes the increase of the level of the world\'s oceans.',
                'assets/images/sea_level.png',
                'Sea level rise',
              ),
              const SizedBox(height: 16),
              _buildInfoContainer(
                screenWidth,
                'The energy derived from natural sources can reduce carbon emissions and air pollution from energy production. Enhance reliability, security, and resilience of the power grid.',
                'assets/images/renewable_energy.png',
                'Renewable Energy',
              ),
              const SizedBox(height: 40),
              Container(
                width: screenWidth * 0.6,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Text(
                  'Impacts of Deforestation',
                  style: TextStyle(
                    color: Color(0xFF1791C8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 1),
              _buildImpactRow(screenWidth, 'Loss of habitat and biodiversity',
                  'assets/images/animal.png'),
              const SizedBox(height: 16),
              _buildImpactRow(
                  screenWidth,
                  'Disruption of global climate patterns',
                  'assets/images/global_warming.png'),
              const SizedBox(height: 16),
              _buildImpactRow(
                  screenWidth,
                  'Soil erosion, degradation, and desertification',
                  'assets/images/Erosion.png'),
              const SizedBox(height: 16),
              _buildImpactRow(
                  screenWidth,
                  'Contribution to greenhouse gas emissions',
                  'assets/images/greenhouse.png'),
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
                  const SizedBox(
                    width: 18,
                    height: 24,
                  ),
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


  Widget _buildInfoContainer(
      double screenWidth, String text, String imagePath, String title) {
    return Container(
      width: screenWidth * 0.9,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1791C8),
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: screenWidth * 0.2,
            height: screenWidth * 0.2,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildImpactRow(double screenWidth, String text, String imagePath) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: screenWidth * 0.2,
          height: screenWidth * 0.2,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

