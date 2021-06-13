import 'package:crypto/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CryptoTracker());
}

class CryptoTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
