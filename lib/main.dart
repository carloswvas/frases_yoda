import 'package:flutter/material.dart';
import './src/home_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: HomeScreen(),
    ),
  ));
}
