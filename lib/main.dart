import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });    
      
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual a raíz quadrada de 5?',
        'respostas': ['10','15','25'],
      },
      {
        'texto': 'Quanto é 6 ao cubo?',
        'respostas': ['36','64','216'],
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];
    List<Widget> widgets = respostas
      .map((t) => Resposta(t, _responder))
      .toList();

    // for(String textoResp in respostas){
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...widgets,
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

/*

for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }

Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
*/