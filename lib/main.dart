import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'texto': 'Qual a raíz quadrada de 5?',
        'respostas': ['10','15','25'],
      },
      {
        'texto': 'Quanto é 6 ao cubo?',
        'respostas': ['36','64','216'],
      }
    ];


  void _responder(){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }    
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
          : Resultado(),
      ), 
    );

  }
}

class PerguntaApp extends StatefulWidget {
  
 _PerguntaAppState createState() {
   return _PerguntaAppState();
 }

}