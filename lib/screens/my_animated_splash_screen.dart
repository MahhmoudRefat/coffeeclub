import 'package:coffeeclub/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class MyAnimatedSplashScreen extends StatelessWidget {
  const MyAnimatedSplashScreen({super.key});

  static String id = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                    'assets/images/property1_coffee_property2_6.png'),
                width: 200,
                //  width: double.infinity,
                height: 200,
                filterQuality: FilterQuality.low,
                // Reduces processing power
                fit: BoxFit.cover, // Ensures proper resizing
                // cacheWidth: 525, // Matches the suggested display size
                // cacheHeight: 525, // Matches the suggested display size
              ),
              Text(
                "Fall in Love with\nCoffee in Blissful \n Delight!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28, // Large font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
              SizedBox(height: 15), // Space between the two texts
              Text(
                "Welcome to our cozy coffee corner, where\n every cup is a delightful for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16, // Smaller font size
                  color: Colors.white70, // Slightly faded white
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB57642), // Brownish color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 90, vertical: 15), // Button size
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // White text color
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        duration: 100000,
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black);
  }
}
