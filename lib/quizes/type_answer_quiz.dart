// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/pages/profile_pages/profile_page.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class TypeAnswerQuiz extends StatefulWidget {
  const TypeAnswerQuiz({super.key});

  @override
  _TypeAnswerQuizState createState() => _TypeAnswerQuizState();
}

class _TypeAnswerQuizState extends State<TypeAnswerQuiz> {
  int score = 0;
  List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      question: "Türkiyənin paytaxtı haradır?",
      correctOptions: ["Ankara", "ankara"],
    ),
    QuizQuestion(
      question: "The Beatles hansı ölkədən olan musiqi qrupudur?",
      correctOptions: ["İngiltərə", "ingiltərə"],
    ),
    QuizQuestion(
      question: "Başlanğıc filminin rejissoru hansı rejissordur?",
      correctOptions: [
        "Christopher Nolan",
        "christopher nolan",
        "nolan",
        "christopher"
      ],
    ),
    QuizQuestion(
      question: "Yupiterin neçə peyki var?",
      correctOptions: ["79"],
    ),
    QuizQuestion(
      question: "DNT tam olaraq nə deməkdir?",
      correctOptions: [
        "Deoxyribonucleic Acid",
        "Deoxyribonucleic",
        "Acid",
        "deoxyribonucleic acid",
        "deoxyribonucleic",
        "acid",
      ],
    ),
    QuizQuestion(
      question: "“Ulduzlu gecə” əsərini hansı məşhur rəssam çəkib?",
      correctOptions: [
        "Vincent van Gogh",
        "vincent van Gogh",
        "Vincent",
        "Van Gogh",
      ],
    ),
    QuizQuestion(
      question: "Günəş sistemindəki ən böyük planet hansı planetdir?",
      correctOptions: ["Yupiter", "yupiter"],
    ),
    QuizQuestion(
      question: "Rok və Roll\" musiqisinin yaradıcısı hansı musiqi janrıdır?",
      correctOptions: ["Blues", "blues"],
    ),
    QuizQuestion(
      question:
          "Hansı film seriyası 'Harri Potter' adlı sehrli personajdan bəhs edir?",
      correctOptions: [
        "Harry Potter",
        "Harry",
        "Potter",
        "harry",
        "potter",
      ],
    ),
    QuizQuestion(
      question: "Moai heykəlləri ilə hansı ölkə məşhurdur?",
      correctOptions: ["Şili", "şili"],
    ),
    QuizQuestion(
      question: 'Dünya üzərində ən böyük ölkə hansıdır?',
      correctOptions: ["Rusiya", "rusiya"],
    ),
    QuizQuestion(
      question: 'Aztek imperiyası hansı ərazidə var idi??',
      correctOptions: [
        "Cənubi Amerika",
        "cənubi amerika",
        "CənubiAmerika",
        "cənubiamerika",
      ],
    ),
    QuizQuestion(
      question: 'Ən qabaqcıl proqramlaşdırma dil hansıdır?',
      correctOptions: [
        "Python",
        "python",
      ],
    ),
    QuizQuestion(
      question: 'Ən uzun çay hansıdır?',
      correctOptions: [
        "Amazon",
        "amazon",
      ],
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
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ProfilePage()));
              },
              icon: const Icon(Icons.arrow_back_ios)),
          shadowColor: Colors.black.withOpacity(0.5),
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            'Type Answer',
            style: GoogleFonts.roboto(
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
                style: GoogleFonts.roboto(
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
                  hintText: 'Cavabı daxil edin',
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: checkAnswer,
                child: const ButtonWidget(
                  color: Colors.deepPurple,
                  text: 'Cavabı yoxla',
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
                  text: 'Növbəti',
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
    List<String> correctOptions =
        quizQuestions[currentQuestionIndex].correctOptions;

    bool isCorrect = false;

    if (userAnswer.isNotEmpty) {
      isCorrect =
          correctOptions.any((option) => option.trim() == userAnswer.trim());
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cavab'),
          content: userAnswer.isEmpty
              ? const Text('Cavabı daxil edin')
              : Text(isCorrect ? 'Doğru!' : 'Yanlış!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (isCorrect) {
                  score++;
                }
                Navigator.of(context).pop();
              },
              child: const Text('Tamam'),
            ),
          ],
        );
      },
    );
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < quizQuestions.length - 1) {
      if (answerController.text.isEmpty) {
        currentQuestionIndex == currentQuestionIndex;
      } else {
        setState(() {
          currentQuestionIndex++;
          answerController.clear();
        });
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Sorğu tamamlandı.'),
            content: Text('Təbriklər. Sorğunu tamamladınız!\nScore: $score'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  resetQuiz();
                },
                child: const Text('Yenidən başlayın'),
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
  List<String> correctOptions;

  QuizQuestion({
    required this.question,
    required this.correctOptions,
  });
}
