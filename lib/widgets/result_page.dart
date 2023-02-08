import 'package:flutter/material.dart';

class RecultPage extends StatelessWidget {
  int number;
  int answerQuestionsLength;
  Function() start;
 String resultText;

  RecultPage(this.number, this.answerQuestionsLength, this.start,this.resultText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Natija: $number/${answerQuestionsLength} ",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
          ),
          Text(resultText),
          TextButton(
            onPressed: () {
              start();
            },
            child: Text(
              "Restart",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

        ],
      ),
    );
  }
}
