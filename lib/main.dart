import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
      print(_perguntaSelecionada);      
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a raíz quadrada de 5?',
      'Qual a fórmula de bhaskara?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'resposta 1',
                  style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: _responder,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'resposta 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: _responder,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'resposta 3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: _responder,
            ),
          ],
        ),
      ), 
    );

  }
}

class PerguntaApp extends StatefulWidget {
  
 _PerguntaAppState createState() {
   return _PerguntaAppState();
 }

}
