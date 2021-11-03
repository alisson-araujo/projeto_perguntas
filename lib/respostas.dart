import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
  
  final String texto;
  final void Function() pressed;
  
  Resposta(this.texto, this.pressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
                style: TextButton.styleFrom(                  
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  texto,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: pressed,
              ),
    );
  }
}
