import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rootally/app/modules/assesmenthealth/views/detailwizard_view.dart';
import 'package:rootally/app/modules/home/views/tabwizard_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 30,
          title: const Text(
            "Hello Jane",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 24,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: "My Assignments"),
                    Tab(text: "My Appointments"),
                  ],
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  // Get.to(DetailwizardView());
                },
                icon: Image.asset('asserts/personrounded.png'),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            
            child: TabBarView(
              physics:NeverScrollableScrollPhysics(),
             children: [
              _assignments(),
              _appointments(),
             
             ],
             
            ),
          ),
          
        ),
      ),
    );
  }
}

Widget _assignments() {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 0,
              child: Container(
                height: 400.0, // Set a fixed height for the card
                width: double.infinity, // Make the card take up the full width of the parent
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adds a radius of 10 to the container
                          child: Container(
                            color: Colors.white,
                            height: 140,
                            width: 315,
                            child: ListView(
                              padding: EdgeInsets.zero, // To avoid default padding
                              children: [
                                ListTile(
                                  leading: SizedBox(
                                    width: 100,  // Set the desired width
                                    height: 500, // Set the desired height
                                    child: Image.asset(
                                      'asserts/grlex.png',
                                      fit: BoxFit.fill, // Adjust how the image fits within the box
                                    ),
                                  ),
                                  title: Text(
                                    'HFitness Assessment', // Corrected the typo in 'Assessment'
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF222E58),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ensures text starts from the left
                                    children: [
                                      Text(
                                        'Get started on your fitness goals with our physical assessment and vital scan',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(height: 8), // Added spacing between text and row
                                      Row(
                                        children: [
                                          Image.asset(
                                            'asserts/mxicon.png', // Corrected spelling from 'asserts' to 'assets'
                                            width: 22.41,
                                            height: 22.41,
                                          ),
                                          SizedBox(width: 8), // Spacing between the image and text
                                          Text(
                                            'Start',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adds a radius of 10 to the container
                          child: Container(
                            color: Colors.white,
                            height: 140,
                            width: 315,
                            child: ListView(
                              padding: EdgeInsets.zero, // To avoid default padding
                              children: [
                                ListTile(
                                  leading: Container(
                                    height: 350, // Increased height to make the container taller
                                    width: 100, // You can also adjust the width if needed
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('asserts/mblman.png'), // Ensure the path is correct
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(10), // Optional: for rounded corners
                                    ),
                                  ),
                                  title: Text(
                                    'Health Risk\nAssessment', // Corrected the typo in 'Assessment'
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF222E58),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ensures text starts from the left
                                    children: [
                                      Text(
                                        'Identify and mitigate\nhealth risks with precise,\nproactive assessments',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Get.off(DetailwizardView());
                                        },
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'asserts/mxicon.png', // Make sure the path is correct
                                              width: 22.41,
                                              height: 22.41,
                                            ),
                                            SizedBox(width: 8), // Spacing between the image and text
                                            Text(
                                              'Start',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        label: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          TabContentView(),
        ],
      ),
    ),
  );
}


Widget _appointments() {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 0,
              child: Container(
                height: 350.0, // Fixed height for the container
                width: double.infinity, // Full width of the parent
                child: Column(
                  children: [
                    Expanded(
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 20.0, // Horizontal space between items
                          mainAxisSpacing: 5.0, // Vertical space between items
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asserts/1rec.png'), // Corrected path
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 30, // Adjust radius as needed
                                          backgroundImage: AssetImage('asserts/grlpic.png'),
                                        ),
                                        SizedBox(height: 8), // Spacing between avatar and label
                                        Text(
                                          'Cancer 2nd\n   Opinion',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color(0xFF222E58),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asserts/2rec.png'), // Corrected path
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage('asserts/phisio.png'),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Physiotheraphy\n  Appointment',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color(0xFF222E58),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asserts/3rec.png'), // Corrected path
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage('asserts/fitness.png'),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          '\t   Fitness\nAppointment',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color(0xFF222E58),
                                          ),
                                        ),
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
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        label: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing at the bottom if needed
                  ],
                ),
              ),
            ),
          ),
          TabContentView(),
        ],
      ),
    ),
  );
}
