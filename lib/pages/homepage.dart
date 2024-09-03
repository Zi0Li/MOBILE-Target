import 'package:flutter/material.dart';
import 'package:target/pages/question_1.dart';
import 'package:target/widgets/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> qtdQuestions = [1, 2, 3, 4, 5];
  List<Widget> _pages = [
    Question1(),
    Question1(),
    Question1(),
    Question1(),
    Question1(),
    Question1(),
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
                'Teste técnico',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (int i in qtdQuestions) _button(i, _pages[i]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _button(int index, Widget f) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => f,
        ),
      ),
      child: Container(
        height: 130,
        width: 200,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Utils.gray,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              index.toString(),
              style: TextStyle(
                fontSize: 60,
                color: Utils.primary,
              ),
            ),
            Text(
              'Questão',
              style: TextStyle(
                letterSpacing: 10,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
