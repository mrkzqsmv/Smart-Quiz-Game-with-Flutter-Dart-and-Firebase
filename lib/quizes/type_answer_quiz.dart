// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tetbiq/quizes/type_answer_quiz_model.dart';

// class TypeAnswerQuiz extends StatefulWidget {
//   const TypeAnswerQuiz({super.key});

//   @override
//   State<TypeAnswerQuiz> createState() => _TypeAnswerQuizState();
// }

// class _TypeAnswerQuizState extends State<TypeAnswerQuiz> {

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.deepPurple.shade100,
//         appBar: AppBar(
//           shadowColor: Colors.black,
//           elevation: 10,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           centerTitle: true,
//           title: Text(
//             'Type Answer',
//             style:
//                 GoogleFonts.quando(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: Column(
//           children: [

//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class TypeAnswerQuiz extends StatefulWidget {
  @override
  _TypeAnswerQuizState createState() => _TypeAnswerQuizState();
}

class _TypeAnswerQuizState extends State<TypeAnswerQuiz> {
  List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      question: "Türkiye'nin başkenti neresidir?",
      options: ["Ankara", "İstanbul", "İzmir", "Bursa"],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      question: "The Beatles hangi ülkeden bir müzik grubudur?",
      options: ["İngiltere", "ABD", "Kanada", "Avustralya"],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      question: "Inception filmi hangi yönetmen tarafından yönetilmiştir?",
      options: [
        "Christopher Nolan",
        "Quentin Tarantino",
        "Steven Spielberg",
        "Martin Scorsese"
      ],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      question: "Jupiter'in kaç tane uyduyu vardır?",
      options: ["67", "79", "63", "52"],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      question: "DNA'nın tam anlamı nedir?",
      options: [
        "Deoxyribonucleic Acid",
        "Digital Nucleic Assembly",
        "Diverse Nucleotide Arrangement",
        "Dynamic Nucleic Acid"
      ],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      question: "Hangi ünlü ressam 'Yıldızlı Gece' tablosunu yapmıştır?",
      options: [
        "Leonardo da Vinci",
        "Vincent van Gogh",
        "Pablo Picasso",
        "Claude Monet"
      ],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      question: "Hangi gezegen Güneş Sistemi'ndeki en büyük gezegendir?",
      options: ["Mars", "Satürn", "Jüpiter", "Venüs"],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      question: "Hangi müzik türü 'Rock and Roll' müziğin öncüsüdür?",
      options: ["Jazz", "Blues", "Country", "Rap"],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      question:
          "Hangi film serisi 'Harry Potter' adlı sihirli bir karakteri konu alır?",
      options: [
        "The Lord of the Rings",
        "Star Wars",
        "Indiana Jones",
        "Harry Potter"
      ],
      correctOptionIndex: 3,
    ),
    QuizQuestion(
      question: "Hangi ülke Moai heykelleri ile ünlüdür?",
      options: ["Japonya", "Peru", "Meksika", "Şili"],
      correctOptionIndex: 3,
    ),
    QuizQuestion(
      question: "Flutter hangi programlama dilinde yazılmıştır?",
      options: ["Dart", "Java", "C++", "Python"],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      question: "Flutter'ın önceki ismi nedir?",
      options: ["Sky", "Bird", "Fire", "Light"],
      correctOptionIndex: 0,
    ),
  ];

  int currentQuestionIndex = 0;
  TextEditingController answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
          shadowColor: Colors.black.withOpacity(0.5),
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            'Type Answer',
            style: GoogleFonts.quando(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                quizQuestions[currentQuestionIndex].question,
                style: GoogleFonts.quando(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: answerController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'Type the answer',
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: checkAnswer,
                child: const ButtonWidget(
                  color: Colors.deepPurple,
                  text: 'Check the answer',
                  txtColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: goToNextQuestion,
                child: const ButtonWidget(
                  color: Colors.deepPurple,
                  text: 'Next Question',
                  txtColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer() {
    String userAnswer = answerController.text;
    bool isCorrect = quizQuestions[currentQuestionIndex].isCorrect(userAnswer);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Answer'),
          content: Text(isCorrect ? 'True!' : 'False!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                goToNextQuestion();
              },
              child: const Text('Okay'),
            ),
          ],
        );
      },
    );
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < quizQuestions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        answerController.clear();
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Quiz is completed.'),
            content: const Text('Congratulations. You completed the quiz!'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  resetQuiz();
                },
                child: const Text('Restart'),
              ),
            ],
          );
        },
      );
    }
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      answerController.clear();
    });
  }
}

class QuizQuestion {
  String question;
  List<String> options;
  int correctOptionIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctOptionIndex,
  });

  bool isCorrect(String userAnswer) {
    int userAnswerIndex = options.indexOf(userAnswer);
    return userAnswerIndex == correctOptionIndex;
  }
}
