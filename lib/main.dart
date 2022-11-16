import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fm_loginapp/screens/homepage.dart';
import 'package:fm_loginapp/screens/signin_page.dart';
import 'package:fm_loginapp/screens/signup_page.dart';
import 'package:fm_loginapp/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    //initialRoute: 'signin_screen',
    initialRoute: 'splash_screen',
    routes: {
      '/': (context) => const HomePage(),
      'signin_screen': (context) => const SignInScreen(),
      // 'reset_screen': (context) => const ResetScreen(),
      'signup_page': (context) => const SignUpScreen(),
      'splash_screen': (context) => SplashScreen(),
    },
    //home: SignInScreen(),
  ));
}
