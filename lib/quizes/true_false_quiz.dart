import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/quizes/choose_game_type.dart';
import 'package:tetbiq/quizes/true_false_quiz_model.dart';

class TrueorFalseQuiz extends StatefulWidget {
  const TrueorFalseQuiz({super.key});

  @override
  State<TrueorFalseQuiz> createState() => _TrueorFalseQuizState();
}

class _TrueorFalseQuizState extends State<TrueorFalseQuiz> {
  //define datas
  List<TrueFalseQuestion> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  TrueFalseAnswer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 15,
        centerTitle: true,
        title: Text(
          'True or False',
          style: GoogleFonts.quando(),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _questionWidget(),
            _answerList(),
            _nextButton(),
          ],
        ),
      ),
    );
  }

  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'Sual ${currentQuestionIndex + 1}/${questionList.length.toString()}',
            style: GoogleFonts.quando(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(16),
          ),
          width: double.infinity,
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(TrueFalseAnswer answer) {
    bool isSelected = answer == selectedAnswer;
    bool isCorrect = answer.isCorrect;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          if (selectedAnswer == null) {
            setState(() {
              selectedAnswer = answer;
              if (answer.isCorrect) {
                score++;
              }
            });
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? (isCorrect ? Colors.green : Colors.red)
              : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        child: Text(answer.answerText),
      ),
    );
  }

  // Widget _nextButton() {
  //   bool isLastQuestion = false;
  //   if (currentQuestionIndex == questionList.length - 1) {
  //     isLastQuestion = true;
  //   }
  //   return SizedBox(
  //     width: MediaQuery.of(context).size.width * 0.5,
  //     height: 48,
  //     child: ElevatedButton(
  //       onPressed: () {
  //         if (isLastQuestion) {
  //           //display score
  //           showDialog(context: context, builder: (_) => _showScoreDialog());
  //         } else {
  //           //next question
  //           setState(() {
  //             currentQuestionIndex++;
  //             selectedAnswer = null;
  //           });
  //         }
  //       },
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: Colors.blueAccent,
  //         foregroundColor: Colors.white,
  //       ),
  //       child: Text(isLastQuestion ? 'Təsdiqlə' : 'Növbəti'),
  //     ),
  //   );
  // }

  Widget _nextButton() {
    bool isLastQuestion = currentQuestionIndex == questionList.length - 1;

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          if (selectedAnswer != null || isLastQuestion) {
            if (isLastQuestion) {
              // Display score
              showDialog(context: context, builder: (_) => _showScoreDialog());
            } else {
              // Next question
              setState(() {
                currentQuestionIndex++;
                selectedAnswer = null;
              });
            }
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        child: Text(isLastQuestion ? 'Təsdiqlə' : 'Növbəti'),
      ),
    );
  }

  Widget _showScoreDialog() {
    bool isPassed = false;
    if (score >= questionList.length * 0.5) {
      isPassed = true;
    }
    String title = isPassed ? 'Təbriklər' : 'Yenidən cəhd edin';
    return AlertDialog(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          ),
          Text(
            'Hesab:   ${score.toString()}',
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChooseGameType(),
                ),
              );
            },
            child: const Text('Oyun tiplərinə geri dön'),
          ),
        ],
      ),
      backgroundColor: isPassed ? Colors.green : Colors.red,
      content: ElevatedButton(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
        child: const Text('Yenidən başla'),
      ),
    );
  }
}
