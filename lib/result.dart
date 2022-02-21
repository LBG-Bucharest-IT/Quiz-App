import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function()? reset;

  Result(this.score, this.reset);

  String getResult() {
    if (score < 5) {
      return 'Cam putin';
    } else if (score < 8) {
      return 'Esti misto!';
    } else if (score < 12) {
      return 'Esti super tare!';
    } else {
      return 'Esti cel mai tare!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
              getResult(),
              style: TextStyle(
                  fontSize: 40, color: Colors.blueGrey, fontWeight: FontWeight.bold),
            )),
        FlatButton(
          color: Colors.green,
          textColor: Colors.white70,
          child: Text('Reset'),
          onPressed: reset,
        )
      ],
    );
  }
}
