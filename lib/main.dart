import 'package:flutter/material.dart';
import 'package:loginsystem_provider/screen/home/view/home_screen.dart';
import 'package:loginsystem_provider/screen/signin/view/signin_screen.dart';
import 'package:loginsystem_provider/screen/signup/view/signup_screen.dart';
import 'package:loginsystem_provider/screen/splash/view/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        'home_screen': (context) => HomeScreen(),
        'signin_screen': (context) => SigninScreen(),
        'signup_screen': (context) => SignupScreen(),
      },
    ),
  );
}
