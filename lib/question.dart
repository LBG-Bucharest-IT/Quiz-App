import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
