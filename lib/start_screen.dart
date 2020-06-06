import 'package:flutter/material.dart';
import 'constants.dart';


class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var sWidth = screensize.width;
    var sHeight = screensize.height;    
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: kColorGradient,
          ),
        )
      )
    );
  }
}