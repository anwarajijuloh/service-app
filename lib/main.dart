import 'package:flutter/material.dart';
import 'package:service_app/config/palette.dart';
import 'package:service_app/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Palette.serviceGreen,
      ),
      home: LoginScreen(),
    );
  }
}
