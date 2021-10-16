import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget{
  @override
  _LocationState createState() => _LocationState();
}
class _LocationState extends State<LocationScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Text("LocationScreen"),
        ),
      ),

    );
  }
}