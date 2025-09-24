import 'package:clinic_app_12_00/ui/screen/profile_screen.dart';
import 'package:clinic_app_12_00/ui/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      theme: ThemeData(
        fontFamily: 'Schlyer'
      )
    );
  }
}