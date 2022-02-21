import 'package:flutter/material.dart';
import 'package:training1/quiz.dart';
import 'package:training1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Intrebarea 1',
      'answers': [
        {'text': '111', 'score': 1},
        {'text': '222', 'score': 2},
        {'text': '333', 'score': 3},
        {'text': '444', 'score': 4},
      ]
    },
    {
      'questionText': 'Intrebarea 2',
      'answers': [
        {'text': '111', 'score': 1},
        {'text': '222', 'score': 2},
        {'text': '333', 'score': 3},
        {'text': '444', 'score': 4},
      ]
    },
    {
      'questionText': 'Intrebarea 3',
      'answers': [
        {'text': '111', 'score': 1},
        {'text': '222', 'score': 2},
        {'text': '333', 'score': 3},
        {'text': '444', 'score': 4},
      ]
    },
    {
      'questionText': 'Intrebarea 4',
      'answers': [
        {'text': '111', 'score': 1},
        {'text': '222', 'score': 2},
        {'text': '333', 'score': 3},
        {'text': '444', 'score': 4},
      ]
    },
  ];

  var _questionIndex = 0;
  var _textScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _textScore += score;
      print(_textScore);
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _textScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // positional argument
    return MaterialApp(
      // named arguments
      home: Scaffold(
        appBar: AppBar(
          title: Text('Primul training BEST IT'),
          backgroundColor: Colors.lightBlue,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_textScore, _reset),
      ),
    );
  }
}



/*
Person (String name, int age) // positional arguments
Person person = Person('Alin', 14);

Person({String name, int age}) // named arguments
Person person = Person(name: 'Alin' age: 14);

Person({String name, int age = 14}) // named arguments
Person person = Person(name: 'Alin');

if expression then fa ceva
else fa altceva

? - expresie ternara

* */
/*
final - const
final =  run time constant value (atunci cand scriu codul, nu stiu ce valoare va avea varibila mea)

const = compile time value (eu stiu ce valoare va avea variabila mea cand va rula codul scris de mine)
*/
