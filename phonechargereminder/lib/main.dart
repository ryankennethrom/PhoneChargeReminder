import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

// Instantiate it
var battery = Battery();
int batteryLevel = 0;

// Import package
void main() {
  // Access current battery level
  runApp(MainApp());
}


class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainApp();
}

class _MainApp extends State<MainApp>{

  @override
  void initState() {
    super.initState();
    battery.batteryLevel.then((value) => {
      batteryLevel = value,
      setState((){
        batteryLevel;
      })
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Battery Percentage : $batteryLevel'),
        ),
      ),
    );
  }
}