import 'package:flutter/material.dart';
import 'package:target/controllers/question_controller.dart';
import 'package:target/widgets/utils.dart';

class Question1 extends StatefulWidget {
  const Question1({super.key});

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  QuestionController controller = QuestionController();
  TextEditingController _textController = TextEditingController();

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
                'Questão 1',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                Utils.questions[0],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              Utils.textFieldWidget(_textController),
              SizedBox(
                height: 25,
              ),
              Center(
                child: TextButton(
                  onPressed: _isFibonacci,
                  child: Text(
                    'Verificar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: Size(100, 30),
                    backgroundColor: Utils.primary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _isFibonacci() {
    if (_textController.text.isNotEmpty) {
      if (controller.question1(int.parse(_textController.text))) {
        Utils.notificationSnackMessage(
          context: context,
          mensage: "Pertence a sequência de Fibonacci.",
          backgroundColor: Colors.green,
          icon: Icons.check,
        );
      } else {
        Utils.notificationSnackMessage(
          context: context,
          mensage: "Não pertence a sequência de Fibonacci.",
          backgroundColor: Colors.red,
          icon: Icons.close,
        );
      }
    } else {
      Utils.notificationSnackMessage(
        context: context,
        mensage: "O numero não pode ser nulo!",
        backgroundColor: Colors.amber.shade700,
        icon: Icons.warning_amber,
      );
    }
    _textController.clear();
  }
}
