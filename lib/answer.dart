import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  void Function()? function;
  String answer;

  Answer(this.function, this.answer);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: function,
      child: Text(answer),
    );
  }

}