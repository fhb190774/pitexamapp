import 'package:flutter/material.dart';
import 'package:bachelorsimulator/screens/main_menu.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bachelorprüfungssimulator',
      home: const MainMenu(),
    );
  }
}
