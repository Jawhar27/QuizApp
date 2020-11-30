import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesIn;
  Question(this.quesIn);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //taking full width
      margin: EdgeInsets.all(30.0),
      child: Text(
        quesIn,
        style: TextStyle(fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
