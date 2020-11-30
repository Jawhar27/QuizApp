import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    if (70 <= resultScore && resultScore <= 110) {
      return "you are determined and persistant and you try to do everything to reach your goals.You have impressive ambitions and dream of a bright future.Luckily your hardworking make your sucess highly probable.Friends are important to you and you tresure these relationships and will do anything if your friends need any help.Your easily get jealous,angry and hurt.";
    } else if (120 <= resultScore && resultScore <= 150) {
      return "All of your friends are fickle aware of your character.Your mood can swing from wonderful to dreadful in a matter of minutes at the same time you're an outgoing and sociable person.Thanks to your extroverted side you're referred to as friendly upbeat and assertive besides you have the ability to infect others with your inending enthusiasm.You love outdoor activities.Your sensitive and you care deeply about the people you love.";
    } else if (160 <= resultScore && resultScore <= 210) {
      return "You are an incredibly optimizing person and you don't lose heart even on the darkest days.You adore new experiences.You are active and energitic and tried out to stay inside for too long being ambitious and charismatic.You have perfect leadership quality and you can be a bit stubborn and bossy but you're also creative and smart.You're very determined and nothing can stop you from achieving your goals.Your outgoing nature attracts people that is why you always surrounded by people.";
    } else if (220 <= resultScore && resultScore <= 280) {
      return "You have stonic and calm personality and you're rarely get angry not many things in this world can irritate you at the same time you are bit introverted and shy prefer staying at home and spending time woth your closest friends to loud parties and bog group of people relationships are extremely important to you.You dream of finding your other half and living happily even after you love making people happy and tend to overlook their weakness and flaws.You don't like wasting money and usually think twice before you make a serious purchase.";
    } else {
      return "Don't have an idea about yourself.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
          ),
        ),
        SizedBox(height: 100.0),
        FlatButton(
          child: Text(
            'Reset Quiz',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                backgroundColor: Colors.red),
          ),
          onPressed: resetQuiz,
        )
      ],
    );
  }
}
