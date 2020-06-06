import 'package:flutter/material.dart';
import 'start_screen.dart';

// TODO: Make screen for controlling the board
// TODO: Add Bluetooth inplementation

void main() => runApp(BoardController());

class BoardController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => StartScreen(),
      },
    );
  }
}