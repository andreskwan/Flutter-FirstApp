import 'dart:html';

import 'package:flutter/material.dart';


//main call the runApp function
void main() => runApp(BullsEyeApp());

class BullsEyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BullsEye',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GamePage(title: 'BullsEye'),
    );
  }
}

class GamePage extends StatefulWidget {
  final String title;
  
  GamePage({Key key, this.title}) : super(key: key)

  @override
  _GamePageState createState() => _GamePageState(); 
  
}