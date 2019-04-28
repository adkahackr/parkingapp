import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'homepage.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking location',
      theme: ThemeData(
        primaryColor: Color(0xff6200ee)
      ),
      home: HomePage(),
    );
  }
}