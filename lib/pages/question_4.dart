import 'package:flutter/material.dart';
import 'package:target/widgets/utils.dart';

class Question4 extends StatefulWidget {
  const Question4({super.key});

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  List<String> _question = [
    'a\) 1, 3, 5, 7, ___',
    'b\) 2, 4, 8, 16, 32, 64, ____',
    'c\) 0, 1, 4, 9, 16, 25, 36, ____',
    'd\) 4, 16, 36, 64, ____ ',
    'e\) 1, 1, 2, 3, 5, 8, ____ ',
    'f\) 2,10, 12, 16, 17, 18, 19, ____'
  ];

  List<String> _logic = [
    'A sequência está somando 2 ao termo anterior.',
    'Cada número é o dobro do anterior.',
    'Composto pelos quadrados dos números inteiros',
    'Composto pelos quadrados dos números pares',
    'Sequência de Fibonacci',
    'A sequência está alternando entre somas e uma série',
  ];

  List<int> _result = [
    9,
    128,
    49,
    100,
    13,
    20,
  ];

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
                'Questão 4',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                Utils.questions[3],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _question.length,
                itemBuilder: (context, index) => ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _question[index],
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('R: ${_result[index]}', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  subtitle: Text('Logica: ${_logic[index]}'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
