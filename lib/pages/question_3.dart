import 'package:flutter/material.dart';
import 'package:target/controllers/question_controller.dart';
import 'package:target/widgets/utils.dart';

class Question3 extends StatefulWidget {
  const Question3({super.key});

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  QuestionController controller = QuestionController();
  TextEditingController _textController = TextEditingController();
  int? soma;

  @override
  void initState() {
    super.initState();
    _textController.text = '12';
  }

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
                'Questão 3',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                Utils.questions[2],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              Utils.textFieldWidget(_textController, TextInputType.number),
              SizedBox(
                height: 25,
              ),
              Center(
                child: TextButton(
                  onPressed: _sum,
                  child: Text(
                    'Somar',
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
              ),
              SizedBox(
                height: 25,
              ),
              (soma != null)
                  ? Center(
                      child: Text(
                        'A soma é $soma',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  void _sum() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        soma = controller.question3(int.parse(_textController.text));
      });
    } else {
      Utils.notificationSnackMessage(
        context: context,
        mensage: "O numero não pode ser nulo!",
        backgroundColor: Colors.amber.shade700,
        icon: Icons.warning_amber,
      );
    }
  }
}
