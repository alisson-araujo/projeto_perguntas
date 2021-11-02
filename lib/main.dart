import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
      {
        'texto': 'Qual a raíz quadrada de 5?',
        'respostas': [
          {'texto': '10', 'nota': 0},
          {'texto': '35', 'nota': 0},      
          {'texto': '15', 'nota': 0},      
          {'texto': '25', 'nota': 10}      
        ],
      },
      {
        'texto': 'Qual a raíz quadrada de 9?',
        'respostas': [
          {'texto': '27', 'nota': 0},
          {'texto': '18', 'nota': 0},      
          {'texto': '81', 'nota': 10},      
          {'texto': '48', 'nota': 0}      
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
    print(_pontuacaoTotal);    
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
          title: const Text('Perguntas'),
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