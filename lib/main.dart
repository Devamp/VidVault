import 'package:flutter/material.dart';
import 'package:vidvault/constants.dart';
import 'package:vidvault/views/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VidVault',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: LoginScreen(),
    );
  }
}
