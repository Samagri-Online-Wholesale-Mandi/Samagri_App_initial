import 'package:flutter/material.dart';
import 'package:home_page/Models/FaqQuestions.dart';

class questionsBuilder extends StatelessWidget {
  final FaqQuestions questions;

  const questionsBuilder({
    Key? key,
    required this.questions
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
      child: RichText(
        text:TextSpan(
          style: TextStyle(
            color: Colors.white
          ),
          children: <TextSpan>[
            TextSpan(text: questions.question, style: TextStyle(color: Colors.orange, fontSize: 25)),
            TextSpan(text: "\n\n\t\t\t${questions.answer}\n\n", style: TextStyle(color: Colors.green, fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
