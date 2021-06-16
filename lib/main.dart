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
  final String? title;

  GamePage({Key? key, this.title}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This tool would make me rich!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            FlatButton(
              child: Text('Hit Me!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  )),
              onPressed: () {
                this._alertIsVisible = true;
                if (this._alertIsVisible) {
                  this._showAlert(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    Widget okButton = FlatButton(
        child: Text("Awesome!"),
        onPressed: () {
          Navigator.of(context).pop();
          this._alertIsVisible = false;
          print("Awesome pressed! $_alertIsVisible");
        });
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Hello there!"),
            content: Text("This is my first pop-up"),
            actions: <Widget>[okButton],
          );
        });
  }
}
