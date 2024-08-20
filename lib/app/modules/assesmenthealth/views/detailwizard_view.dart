import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootally/app/modules/home/views/home_view.dart';

class DetailwizardView extends GetView {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () {
              Get.off(HomeView());
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics:ClampingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: 322,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF69F5BB).withOpacity(0.5),
                    Color(0xFF91B655).withOpacity(0.5),
                  ],
                  stops: [0.0, 1.0],
                  radius: 2.0,
                ),
              ),
            ),
            Positioned(
              top: kToolbarHeight, // Adjusted to start below AppBar
              right: 10,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Image.asset(
                  'asserts/launcher.png', // Corrected path
                  width: 145,
                  height: 215,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Health Risk \nAssessment",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF222E58),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 1.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Your onPressed action here
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          minimumSize: Size(65, 30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "asserts/timer.png", // Corrected path
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "4 min",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF222E58),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "What do you get ?",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xFF222E58),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildFeatureItem('asserts/heart.png', 'Key Body\nVitals'),
                                _buildFeatureItem('asserts/body.png', 'Posture\nAnalysis'),
                                _buildFeatureItem('asserts/brain.png', 'Body\nComposition'),
                                _buildFeatureItem('asserts/reports.png', 'Instant\nReports'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Stack(
                              alignment: Alignment.center, // Aligns the text in the center
                              children: [
                                Image.asset('asserts/bgm.png'), // Replace with your image path
                                Positioned(
                                  left: 0,
                                  top: 10,
                                  bottom: 10, // Adjust position as needed
                                  child: Text(
                                    "How we do it?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Color(0xFF222E58),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 160),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "1. Ensure that you are in a well-lit space\n"
                                        "2. Allow camera access and place your device against a stable object or wall\n"
                                        "3. Avoid wearing baggy clothes\n"
                                        "4. Make sure you exercise as per the instruction provided by the trainer\n"
                                        "5. Watch the short preview before each exercise",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          _buildBenefitsSection(),
                          _buildStartAssignmentButton(),
                        ],
                      ),
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

  Widget _buildFeatureItem(String assetPath, String title) {
    return GestureDetector(
  onTap: () {
    // Define the action you want to perform on tap
    print('CircleAvatar tapped');
    // You can also navigate to a new page or perform any other action here
  },
  child: Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.asset(assetPath, width: 60, height: 60),
          ),
        ),
      ),
      SizedBox(height: 8),
      Text(
        title,
        style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    ],
  ),
);
  }

  Widget _buildBenefitsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Benefits",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color(0xFF222E58),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: Colors.grey,
                  width: 0,
                ),
              ),
              child: Container(
                color: Color(0xFFFAFCFF),
                width: 550,
                height: 135,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "* Holistic Insight Into Physical Health Across multiple Key Areas \n *Enable Early Inventions, improving preventive Care and health Outcomes \n * tailored Lifestyle and Health recommendations Based on Detailed Assessment Result",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStartAssignmentButton() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          onPressed: () {
            // Handle button press
          },
          icon: Icon(Icons.play_arrow_sharp, color: Colors.white),
          label: Text(
            "Start Assignment",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
