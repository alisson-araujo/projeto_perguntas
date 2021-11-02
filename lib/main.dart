import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'WTF IS GOING ON?',
      'Hey Bro, are you OK?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'I do not know!!!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){},
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'WHATT?!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: null,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Are you serious?!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){},
            ),
          ],
        ),
      ), 
    );
  }
}