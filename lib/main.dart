import 'package:flutter/material.dart';
import 'BMI_input_Page.dart';

void main() {
  runApp(BodyMassIndex());
}

class BodyMassIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbColor: Colors.pink,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            overlayColor: Color(0x29eb1555),
          ),
          primaryColor: Color(0xFF0A0E21),
          accentColor: Colors.deepPurple,
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: BMI(),
    );
  }
}
