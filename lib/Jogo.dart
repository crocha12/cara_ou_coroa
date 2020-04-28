import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {

  int resultado;

  Jogo(this.resultado);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                  'images/moeda_${widget.resultado == 1 ? 'cara' : 'coroa'}.png'),
              GestureDetector(
                child: Image.asset('images/botao_voltar.png'),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ));
  }
}
