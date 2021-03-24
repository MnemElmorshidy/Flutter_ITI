import 'package:flutter/material.dart';
import 'package:lab3/SignUp.dart';
import 'package:lab3/SplashScreen.dart';
import 'package:lab3/SignIn.dart';
import 'package:lab3/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
