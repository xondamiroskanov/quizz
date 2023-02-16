import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
final String text;
final Function func;
final List<Map<String, dynamic>> questions;
AnswerPage(this.text,this.func,this.questions);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Tarjimasini toping",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black38,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Text(
              text,
              style:
              TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  func(questions[0]
                  ['togrimi']);
                },
                child: Text(
                    questions[0]["matn"]),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  func(questions[1]
                  ['togrimi']);
                },
                child: Text(
                    questions[1]['matn']),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  func(questions[2]
                  ['togrimi']);
                },
                child: Text(
                  questions[2]['matn'],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
