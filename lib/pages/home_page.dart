import 'package:flutter/material.dart';
import 'package:quizz/widgets/answers_page.dart';
import 'package:quizz/widgets/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> answerAndQuestions = [
    {
      "savol": "1 Apple ...",
      "javoblar": [
        {"matn": "Olcha", "togrimi": false},
        {"matn": "Olma", "togrimi": true},
        {"matn": "O'rik", "togrimi": false},
      ]
    },
    {
      "savol": "2 Banana ...",
      "javoblar": [
        {"matn": "Banan", "togrimi": true},
        {"matn": "Olma", "togrimi": false},
        {"matn": "O'rik", "togrimi": false},
      ]
    },
    {
      "savol": "3 Hello ...",
      "javoblar": [
        {"matn": "Salom", "togrimi": true},
        {"matn": "Olma", "togrimi": false},
        {"matn": "O'rik", "togrimi": false},
      ]
    },
    {
      "savol": "4 Apricot ...",
      "javoblar": [
        {"matn": "Banan", "togrimi": false},
        {"matn": "Olma", "togrimi": false},
        {"matn": "O'rik", "togrimi": true},
      ]
    }
  ];
  int count = 0;
  int trueFalse = 0;

  void next(bool togrimi) {
    setState(() {
      count ++;
      if (togrimi) {
        trueFalse++;
      }
    });
  }
  String resultText = '';
  String result(){
    if(trueFalse == 0){
      return resultText = "qaytadan urinib koring";
    } if(trueFalse>=1 && trueFalse<=3){
      return resultText = 'Natijangiz yaxshi lekin keyingi safar bundan ham yaxshi natija bolishi mumkin';
    } if(trueFalse==4){
      return resultText = "A'lo siz hamma savollarga togri javob berdingiz";
    }
    return "Natija topilmadi";
  }

  void restart(){
    setState((){
      count = 0;
      trueFalse = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quizz",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: count < answerAndQuestions.length
          ? Center(
              child: AnswerPage(answerAndQuestions[count]['savol'], next, answerAndQuestions[count]['javoblar'])
            )
          :RecultPage(trueFalse, answerAndQuestions.length, () => restart(),result()
        ),
    );
  }
}
