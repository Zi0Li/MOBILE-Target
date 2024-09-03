import 'package:flutter/material.dart';
import 'package:target/widgets/utils.dart';

class Question5 extends StatefulWidget {
  const Question5({super.key});

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'img/logo.png',
              width: 45,
              height: 45,
            ),
            Text('Target Sistemas'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Questão 5',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                Utils.questions[4],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              Divider(),
              Text(
                'Resposta',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              _text(
                  'Primeiramente irei ligar o interruptor 1 e deixarei ele ligado por alguns minutos.'),
              _text('Em seguida ligarei o interruptor 2'),
              _text('Vou para a sala das lampadas e toco em todas as lampadas'),
              _text('Desta forma:'),
              _text(
                  '1 - A lampada que tiver ligada e referente ao interruptor 2'),
              _text(
                  '2 - A lampada que tiver apagada e quente, referente ao interruptor 1'),
              _text(
                  '3 - A lampada que tiver apagada e fria, e referente ao interruptor 3'),
            ],
          ),
        ),
      ),
    );
  }

  Text _text(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}
