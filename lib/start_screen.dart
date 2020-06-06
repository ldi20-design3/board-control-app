import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  padding: EdgeInsets.all(12.5),
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFe3e5e9),
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x4De3e5e9),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Left To Right Button
                            Expanded(
                              child: ReusableCard(
                                onPress: () {
                                  setState(() {
                                    // Set mode to 'ltr'
                                    selectedMode = Modes.ltr;
                                  });
                                },
                                cardColor: selectedMode == Modes.ltr ? kActiveCardColor : kInactiveCardColor,
                                cardChild: IconContent(icon: FontAwesomeIcons.arrowRight, label: 'Left to Right'),
                              )
                            ),
                            // Right To Left Button
                            Expanded(
                              child: ReusableCard(
                                onPress: () {
                                  setState(() {
                                    // Set mode to 'rtl'
                                    selectedMode = Modes.rtl;
                                  });
                                },
                                cardColor: selectedMode == Modes.rtl ? kActiveCardColor : kInactiveCardColor,
                                cardChild: IconContent(icon: FontAwesomeIcons.arrowLeft, label: 'Right to Left'),
                              )
                            )
                          ],
                        ),
                        Row(
                          children: [
                            // Random Button
                            Expanded(
                              child: ReusableCard(
                                onPress: () {
                                  setState(() {
                                    // Set mode to 'random'
                                    selectedMode = Modes.random;
                                  });
                                },
                                cardColor: selectedMode == Modes.random ? kActiveCardColor : kInactiveCardColor,
                                cardChild: IconContent(icon: FontAwesomeIcons.exchangeAlt, label: 'Random'),
                              )
                            ),
                            // Right To Left Button
                            Expanded(
                              child: ReusableCard(
                                onPress: () {
                                  setState(() {
                                    // Set mode to 'control'
                                    selectedMode = Modes.control;
                                  });
                                },
                                cardColor: selectedMode == Modes.control ? kActiveCardColor : kInactiveCardColor,
                                cardChild: IconContent(icon: FontAwesomeIcons.playCircle, label: 'Control'),
                              )
                            )
                          ],
                        )
                      ],
                    ),
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