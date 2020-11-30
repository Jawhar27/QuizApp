import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function func;
  final String ans;
  Answer(this.func, this.ans);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            ans,
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          onPressed: func),
    );
  }
}
