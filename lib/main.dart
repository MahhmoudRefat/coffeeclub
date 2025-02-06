import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffeeclub/screens/home_page.dart';
import 'package:coffeeclub/screens/my_animated_splash_screen.dart';
import 'package:coffeeclub/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       HomePage.id:(context)=>const HomePage(),
       MyAnimatedSplashScreen.id:(context)=> MyAnimatedSplashScreen(),
       SplashScreen.id:(context)=>const SplashScreen(),

     },
      initialRoute: SplashScreen.id,
    );
  }
}



