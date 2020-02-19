import 'package:flutter/material.dart';
import 'screens/input__page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
        primaryColor: Color(0XFF24292E),
        scaffoldBackgroundColor: Color(0XFF141518),
      ),
      home: InputPage(),
    );
  }
}
