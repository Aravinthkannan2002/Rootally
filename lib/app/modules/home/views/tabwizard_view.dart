import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rootally/app/modules/home/controllers/home_controller.dart';

class TabContentView extends StatelessWidget {
  const TabContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Challenges",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asserts/arrowforward.png'),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 16), // Adds space between the Row and Card
            Card(
              elevation: 0, // Adds shadow to the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Makes the content scroll horizontally
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildChallengeCard(),
                    SizedBox(width: 16),
                    buildChallengeCard(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Workout Routines",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asserts/arrowforward.png'),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 16), // Adds space between the Row and Card
            Card(
              // color: Colors.transparent, // Makes the card background transparent
              // elevation: 0, // No shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
                side: BorderSide(color: Colors.black38, width: 0), // Border color and width
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Makes the content scroll horizontally
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    __buildWorkoutCard(),
                    SizedBox(width: 10),
                    _buildWorkoutCard(),
                  ],
                ),
              ),
            ),
          ],
        );
      }

  }

  Widget buildChallengeCard() {
    return Stack(
      children: [
        // The image
        Image.asset(
          'asserts/challanges.png', // Ensure the path is correct
          fit: BoxFit.fill, // Adjust fit as needed
          width: 338, // Adjust width as needed
          height: 129, // Adjust the height as needed
        ),
        // The text
        Positioned(
          top: 5, // Adjust positioning as needed
          left: 20,
          child: Text(
            'Today Challenges!',
            style: TextStyle(
              color: const Color(0xFF2B7A71),
              fontSize: 12, // Text size
              fontWeight: FontWeight.bold, // Text weight
            ),
          ),
        ),
        // Spacing
        SizedBox(width: 10),
        // Small rectangle with rounded corners
        Positioned(
          top: 20, // Adjust positioning as needed
          left: 20,
          child: Container(
            child: Center(
              child: Text(
                "Push Up 20X",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            width: 84, // Width of the rectangle
            height: 18, // Height of the rectangle
            decoration: BoxDecoration(
              color: const Color(0xFF2B7A71), // Background color of the rectangle
              borderRadius: BorderRadius.circular(15), // Rounded corners
            ),
          ),
        ),
        // Spacing
        SizedBox(width: 16),
        Positioned(
          top: 30, // Adjust positioning as needed
          left: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
              children: <Widget>[
                LinearPercentIndicator(
                  barRadius: Radius.circular(7),
                  width: 100, // Reduced width for horizontal scroll
                  animation: true,
                  lineHeight: 9.0, // Adjust lineHeight if needed
                  animationDuration: 2000,
                  percent: 0.5,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: const Color(0xFFFF88A5),
                ),
                SizedBox(height: 10), // Spacing between the indicator and the text
                Text(
                  '10/20 Complete', // Adjust the text as needed
                  style: TextStyle(
                    fontSize: 10, // Adjust font size if needed
                    color: Colors.black, // Adjust text color if needed
                  ),
                ),
                SizedBox(height: 10), // Spacing before the button
                Container(
                  width: 98,
                  height: 27,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30, // Adjust the width as needed
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('asserts/mxicon.png'),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between icon and text
                        Expanded(
                          child: Text(
                            "continue",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWorkoutCard() {
    return Stack(
      children: [
        // The image
        Image.asset(
          'asserts/banner3.png', // Ensure the path is correct
          fit: BoxFit.fill, // Adjust fit as needed
          width: 250, // Adjust width as needed
          height: 120, // Adjust the height as needed
        ),
        // Text and button overlay
        Positioned(
          top: 10, // Adjust positioning as needed
          right: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text and buttons to the start
            children: [
              Text(
                'Sweat Starter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16, // Text size
                  fontWeight: FontWeight.bold, // Text weight
                ),
              ),
              SizedBox(height: 5), // Spacing between texts
              Text(
                'Full Body',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14, // Text size
                ),
              ),
              SizedBox(height: 5), // Spacing before the buttons
              TextButton(
                onPressed: () {
                  // Add your onPressed functionality here
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5), // Adjust padding
                  minimumSize: Size(20, 20), // Set minimum size for width and height
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink the tap area to match the button size
                  side: BorderSide(color: Colors.black38, width: 1), // Set outline color and width
                ),
                child: Text(
                  'Loss Weight',
                  style: TextStyle(
                    color: Colors.blue, // Text color
                    fontWeight: FontWeight.bold, // Text weight
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 27,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
                    children: [
                      SizedBox(
                        width: 30, // Adjust the width as needed
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('asserts/mxicon.png'),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      SizedBox(width: 8), // Adjust spacing between icon and text
                      Expanded(
                        child: Text(
                          "Start Workout",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


  Widget __buildWorkoutCard() {
    return Stack(
      children: [
        // The image
        Image.asset(
          'asserts/banner2.png', // Ensure the path is correct
          fit: BoxFit.fill, // Adjust fit as needed
          width: 250, // Adjust width as needed
          height: 120, // Adjust the height as needed
        ),
        // Text and button overlay
        Positioned(
          top: 10, // Adjust positioning as needed
          right: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text and buttons to the start
            children: [
              Text(
                'Sweat Starter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16, // Text size
                  fontWeight: FontWeight.bold, // Text weight
                ),
              ),
              SizedBox(height: 5), // Spacing between texts
              Text(
                'Full Body',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14, // Text size
                ),
              ),
              SizedBox(height: 5), // Spacing before the buttons
              TextButton(
                onPressed: () {
                  // Add your onPressed functionality here
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5), // Adjust padding
                  minimumSize: Size(20, 20), // Set minimum size for width and height
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink the tap area to match the button size
                  side: BorderSide(color: Colors.black38, width: 1), // Set outline color and width
                ),
                child: Text(
                  'Loss Weight',
                  style: TextStyle(
                    color: Colors.blue, // Text color
                    fontWeight: FontWeight.bold, // Text weight
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 27,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
                    children: [
                      SizedBox(
                        width: 30, // Adjust the width as needed
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('asserts/mxicon.png'),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      SizedBox(width: 8), // Adjust spacing between icon and text
                      Expanded(
                        child: Text(
                          "Start Workout",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }



