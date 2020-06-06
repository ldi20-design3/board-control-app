import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

enum Modes {
  ltr,
  rtl,
  random,
  control 
}

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  
  Modes selectedMode;
  var active = false;
  
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
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Select Play Mode',
                  style: kHeaderText,
                ),
                Container(
                  padding: EdgeInsets.all(12.5),
                  decoration: BoxDecoration(
                    color: Color(0xFFe3e5e9)
                  ),
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}