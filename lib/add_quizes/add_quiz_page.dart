import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/models/first_quiz_model.dart';
import 'package:tetbiq/widgets/button_widget.dart';
import 'package:tetbiq/widgets/text_form_field.dart';

class AddQuizMainPage extends StatefulWidget {
  const AddQuizMainPage({super.key});

  @override
  State<AddQuizMainPage> createState() => _AddQuizMainPageState();
}

class _AddQuizMainPageState extends State<AddQuizMainPage> {
  final questionController = TextEditingController();
  final answer1Controller = TextEditingController();
  final answer2Controller = TextEditingController();
  final answer3Controller = TextEditingController();
  final answer4Controller = TextEditingController();
  List<Question> questionList = getQuestions();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Sual',
                  style: GoogleFonts.quando(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(controller: questionController),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Cavablar',
                  style: GoogleFonts.quando(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(controller: answer1Controller),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(controller: answer2Controller),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(controller: answer3Controller),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(controller: answer4Controller),
                InkWell(
                  onTap: () {
                    addNewQuestion();
                    Navigator.of(context).pop();
                  },
                  child: const ButtonWidget(
                      color: Colors.deepPurple,
                      text: 'Əlavə et',
                      txtColor: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addNewQuestion() {
    questionList.add(
      Question(questionController.text, [
        Answer(answerText: answer1Controller.text, isCorrect: false),
        Answer(answerText: answer2Controller.text, isCorrect: true),
        Answer(answerText: answer3Controller.text, isCorrect: false),
        Answer(answerText: answer4Controller.text, isCorrect: false),
      ]),
    );
  }
}
