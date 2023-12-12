import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/models/first_quiz_model.dart';
import 'package:tetbiq/new_pages/count_down.dart';
import 'package:tetbiq/quizes/choose_game_type.dart';

class FirstQuizGame extends StatefulWidget {
  const FirstQuizGame({
    super.key,
  });

  @override
  State<FirstQuizGame> createState() => _FirstQuizGameState();
}

class _FirstQuizGameState extends State<FirstQuizGame> {
  //Define datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width /1.6,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                border: Border.all(color: Colors.grey.shade100),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width / 10,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: Colors.blueAccent.shade400,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      Text(
                        '${currentQuestionIndex + 1}/${questionList.length.toString()}',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                _questionWidget(),
                _answerList(),
                _nextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CountDown(),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Icon(
              Icons.file_copy,
              color: Colors.blue,
            ),
            Text(
              'Quiz',
              style:
                  GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
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

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    bool isCorrect = answer.isCorrect;
    bool isWrongSelected = isSelected && !isCorrect;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 70,
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: isWrongSelected
              ? Colors.red
              : (isSelected ? Colors.green : Colors.white),
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        child: Text(answer.answerText),
      ),
    );
  }

  Widget _nextButton() {
    bool isLastQuestion = currentQuestionIndex == questionList.length - 1;
    bool hasSelectedAnswer = selectedAnswer != null;

    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          if (isLastQuestion) {
            //display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else if (hasSelectedAnswer) {
            //next question
            setState(() {
              currentQuestionIndex++;
              selectedAnswer = null;
            });
          }
        },
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'Hesab:   ${score.toString()}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w300),
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
              child: const Text('Oyun növlərinə keçid edin'),
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
          child: const Text('Yenidən başlayın'),
        ));
  }
}
