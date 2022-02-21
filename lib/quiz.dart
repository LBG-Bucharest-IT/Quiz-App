import 'package:flutter/material.dart';
import 'package:training1/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {

  final Function _answerQuestion;
  final List<Map<String, Object>> _questions;
  final int _questionIndex;

  Quiz(this._answerQuestion, this._questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['questionText'] as String),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => _answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
