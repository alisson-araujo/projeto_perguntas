import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String? get fraseResultado {
    if(pontuacao == 10 ){
      return 'acertou uma KKK!';
    }else if(pontuacao > 10){
      return 'ACERTO MIZERAVI!!!';
    }  else{
      return 'EROOOOOU!!!';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,    //propriedade que coloca no centro da tela
      children: <Widget>[
        Center(
              child: Text(
                fraseResultado!,
                style: TextStyle(fontSize: 28),
              ),
            ),
            TextButton(
              onPressed: reiniciarQuestionario,
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Reiniciar?',
                style: TextStyle(
                  color: Colors.white,
                ),                
              )
            ),
      ],
    );
  }
}