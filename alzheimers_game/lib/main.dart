
import 'package:alzheimers_game/screens/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(RememberME());
}

class RememberME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RememberME',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
