import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onLongPress: () {
                print(
                  'Left has been long pressed',
                );
              },
              onPressed: () {
                print(
                  'Left Button got pressed',
                );
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onLongPress: () {
                print(
                  'Right has been long pressed',
                );
              },
              onPressed: () {
                print(
                  'Right Button got Pressed',
                );
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
