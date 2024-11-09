import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi2.dart';

class BMI_1 extends StatefulWidget {
  @override
  _BMI_1State createState() => _BMI_1State();
}

class _BMI_1State extends State<BMI_1> {
  double height = 120;
  int age = 5;
  int weight = 30;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu_rounded, color: Colors.white),
        title: Text('BMI', style: TextStyle(color: Colors.white)),
      ),

      body: Container(
        // Main container for the screen
        color: Colors.grey[400],
        child: Column(
          // Column to stack all elements vertically
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  // Row to align the gender options horizontally
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true; // Set gender to male
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isMale ? Colors.black : Colors.grey[700]),
                          // Column to display Male icon and text
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male_rounded,
                                size: 60,
                                color: isMale ? Colors.white : Colors.black,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color:
                                        isMale ? Colors.white : Colors.black),
                              ),
                            ],
                          ), // Closing the Column for Male option
                        ), // Closing the Container for Male option
                      ), // Closing GestureDetector for Male
                    ),
                    SizedBox(
                        width: 10), // Space between Male and Female options
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false; // Set gender to female
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: !isMale ? Colors.black : Colors.grey[700]),
                          // Column to display Female icon and text
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female_rounded,
                                size: 60,
                                color: !isMale ? Colors.white : Colors.black,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color:
                                        !isMale ? Colors.white : Colors.black),
                              ),
                            ],
                          ), // Closing the Column for Female option
                        ), // Closing the Container for Female option
                      ), // Closing GestureDetector for Female
                    ),
                  ],
                ), // Closing Row for gender options
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  // Column for height text, value and slider
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220,
                           min: 50,
                          activeColor: Colors.lightGreenAccent,
                          inactiveColor: Colors.white54,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ],
                  ), // Closing Column for height
                ), // Closing Container for height
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  // Row for weight and age sections
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        // Column for weight text, value, and controls
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++; // Increase weight
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white),
                                  iconSize: 30,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--; // Decrease weight
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white),
                                  iconSize: 30,
                                ),
                              ],
                            ),
                          ],
                        ), // Closing Column for weight
                      ), // Closing Container for weight
                    ),
                    SizedBox(width: 10), // Space between weight and age
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        // Column for age text, value, and controls
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++; // Increase age
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white),
                                  iconSize: 30,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--; // Decrease age
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white),
                                  iconSize: 30,
                                ),
                              ],
                            ),
                          ],
                        ), // Closing Column for age
                      ), // Closing Container for age
                    ),
                  ],
                ), // Closing Row for weight and age
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    var result =
                        weight / pow(height / 100, 2); // BMI calculation

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMI_2(
                          age: age,
                          isMale: isMale,
                          result: result.round(), // Pass rounded BMI result
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ),
          ],
        ), // Closing Column for the whole body
      ), // Closing main Container
    );
  }
}
