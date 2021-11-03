import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String? get fraseResultado {
    switch(pontuacao){
      case 10:
        return 'Ta fraco em? acertou só uma!';
      case 20:
        return 'Acertou duas, da para melhorar!';
      case 30:
        return 'Que isso em? acertou TRÊES!';
      case 40:
        return 'Acertou todas! GÊNIO!';
      default:
        return 'ERROU TUDO! KKK';
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
                style: const TextStyle(fontSize: 28),
              ),
            ),
            TextButton(
              onPressed: reiniciarQuestionario,
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Reiniciar?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),                
              )
            ),
      ],
    );
  }
}