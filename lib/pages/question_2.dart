import 'package:flutter/material.dart';
import 'package:target/controllers/question_controller.dart';
import 'package:target/widgets/utils.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
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
                'Questão 2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                Utils.questions[1],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              Utils.textFieldWidget(_textController, TextInputType.name),
              SizedBox(
                height: 25,
              ),
              Center(
                child: TextButton(
                  onPressed: _countA,
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

  void _countA() {
    if (_textController.text.isNotEmpty) {
      int result = controller.question2(_textController.text);
      if (result != 0) {
        Utils.notificationSnackMessage(
          context: context,
          mensage: "A letra 'a' parece $result vezes.",
          backgroundColor: Colors.green,
          icon: Icons.check,
        );
      } else {
        Utils.notificationSnackMessage(
          context: context,
          mensage: "Não aparece nenhuma letra 'a'",
          backgroundColor: Colors.red,
          icon: Icons.close,
        );
      }
    } else {
      Utils.notificationSnackMessage(
        context: context,
        mensage: "Preencha o campo!",
        backgroundColor: Colors.amber.shade700,
        icon: Icons.warning_amber,
      );
    }
    _textController.clear();
  }
}
