import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
      {
        'texto': 'Qual a raíz quadrada de 25?',
        'respostas': [
          {'texto': '6', 'nota': 0},
          {'texto': '5', 'nota': 10},      
          {'texto': '10', 'nota': 0},      
          {'texto': '4', 'nota': 0}      
        ],
      },
      {
        'texto': 'Qual o dobro de 865?',
        'respostas': [
          {'texto': '1670', 'nota': 0},
          {'texto': '1730', 'nota': 10},      
          {'texto': '1710', 'nota': 0},      
          {'texto': '1690', 'nota': 0}      
        ],
      },
      {
        'texto': 'Qual a raíz quadrada de 81?',
        'respostas': [
          {'texto': '7', 'nota': 0},
          {'texto': '8', 'nota': 0},      
          {'texto': '9', 'nota': 10},      
          {'texto': '11', 'nota': 0}      
        ],
      },
      {
        'texto': 'Quantos zeros tem 1 bilhão?',
        'respostas': [
          {'texto': '10', 'nota': 0},
          {'texto': '8', 'nota': 0},      
          {'texto': '11', 'nota': 0},      
          {'texto': '9', 'nota': 10}      
        ],
      }
    ];


  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

    
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QUIZ!'),
          backgroundColor: Colors.green,
        ),
        body: temPerguntaSelecionada 
          ? Questionario(perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quandoResponder: _responder,
            )
          : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ), 
    );

  }
}

class PerguntaApp extends StatefulWidget {
  
 _PerguntaAppState createState() {
   return _PerguntaAppState();
 }

}