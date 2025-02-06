import 'package:coffeeclub/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String id = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    // Start a timer to navigate to HomePage after a delay
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Coffee image
            Image(
              image: AssetImage('assets/images/property1_coffee_property2_6.png'),
              width: double.infinity,
             // height: 200,
              filterQuality: FilterQuality.low,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20), // Space between image and text
            // Title text
            Text(
              "Fall in Love with\nCoffee in Blissful \n Delight!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15), // Space between title and description
            // Description text
            Text(
              "Welcome to our cozy coffee corner, where\n every cup is a delightful for you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 25), // Space between description and button
            // Get Started button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB57642),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
