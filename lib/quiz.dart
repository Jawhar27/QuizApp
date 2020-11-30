import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int indNo;
  final List<Map<String, Object>> ques;
  final Function fun;
  Quiz(this.ques, this.fun, this.indNo);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(ques[indNo]['questionText']),
          ...(ques[indNo]['ans'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => fun(answer['sco']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
