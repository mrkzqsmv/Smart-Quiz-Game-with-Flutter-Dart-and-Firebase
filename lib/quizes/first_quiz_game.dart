import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/models/first_quiz_model.dart';
import 'package:tetbiq/quizes/choose_game_type.dart';

class FirstQuizGame extends StatefulWidget {
  const FirstQuizGame({super.key});

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
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.black,
        elevation: 20,
        centerTitle: true,
        title: Text(
          'Quiz',
          style: GoogleFonts.roboto(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
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
            style: GoogleFonts.roboto(
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

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    bool isCorrect = answer.isCorrect;
    bool isWrongSelected = isSelected && !isCorrect;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 55,
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
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
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
