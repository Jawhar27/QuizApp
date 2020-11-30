import 'package:flutter/material.dart';
import './result.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexNo = 0;
  var initScore = 0;

  void resetQuiz() {
    setState(() {
      indexNo = 0;
      initScore = 0;
    });
  }

  void answerQues(int x) {
    initScore = initScore + x;
    print(initScore);
    setState(() {
      indexNo = indexNo + 1;
    });

    print('clicked!');
    print(indexNo);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'When is Your Birthday ',
        'ans': [
          {'text': 'January-March', 'sco': 40},
          {'text': 'April-june', 'sco': 30},
          {'text': 'July-September', 'sco': 20},
          {'text': 'October-December', 'sco': 10}
        ]
      },
      {
        'questionText': 'Pick Your Favourite Season',
        'ans': [
          {'text': 'Summer', 'sco': 20},
          {'text': 'Spring', 'sco': 30},
          {'text': 'winter', 'sco': 40},
          {'text': 'Autumn', 'sco': 10}
        ]
      },
      {
        'questionText': 'what is Your Date of Birth',
        'ans': [
          {'text': '1-8', 'sco': 10},
          {'text': '9-17', 'sco': 40},
          {'text': '18-25', 'sco': 30},
          {'text': '26-31', 'sco': 20}
        ]
      },
      {
        'questionText': 'what Time of day or Night Was It When You Were Born',
        'ans': [
          {'text': '12am-7am', 'sco': 40},
          {'text': '7am-2pm', 'sco': 20},
          {'text': '2pm-9pm', 'sco': 10},
          {'text': '9pm-12am', 'sco': 30}
        ]
      },
      {
        'questionText':
            'Pick The personality Trait That\'s Most Prominent In Your Character',
        'ans': [
          {'text': 'Firefulness', 'sco': 40},
          {'text': 'Creativity', 'sco': 20},
          {'text': 'Cheerfulness', 'sco': 30},
          {'text': 'Discipline', 'sco': 10}
        ]
      },
      {
        'questionText': 'what Are Your Favourite colors',
        'ans': [
          {'text': 'Yellow and Orange', 'sco': 10},
          {'text': 'Green and Blue', 'sco': 20},
          {'text': 'Pink and Red', 'sco': 30},
          {'text': 'Black and White', 'sco': 40}
        ]
      },
      {
        'questionText': 'Which Animal Do You Like Most',
        'ans': [
          {'text': 'Fox', 'sco': 10},
          {'text': 'wolf', 'sco': 40},
          {'text': 'Fish', 'sco': 20},
          {'text': 'Deer', 'sco': 30}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Quiz')),
          ),
          body: indexNo < questions.length
              ? Quiz(questions, answerQues, indexNo)
              : Result(initScore, resetQuiz)),
    );
  }
}
