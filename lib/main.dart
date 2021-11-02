import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());


class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'WTF IS GOING ON?',
      'Hey Bro, are you OK?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
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
              child: const Text(
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
              child: const Text(
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