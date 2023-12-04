// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tetbiq/quizes/first_quiz_game.dart';
import 'package:tetbiq/quizes/true_false_quiz.dart';
import 'package:tetbiq/quizes/type_answer_quiz.dart';

class ChooseGameType extends StatefulWidget {
  const ChooseGameType({super.key});

  @override
  State<ChooseGameType> createState() => _ChooseGameTypeState();
}

class _ChooseGameTypeState extends State<ChooseGameType> {
  List<String> quizTypes = ['Quiz', 'True or False', 'Type Answer'];
  List<Color> colors = [Colors.blue, Colors.red, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        shadowColor: Colors.grey,
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          'Quiz Types',
          style: GoogleFonts.quando(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: quizTypes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              trailing: IconButton(
                onPressed: () {
                  if (colors[index]==Colors.blue) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstQuizGame()),);
                  }
                  if (colors[index]==Colors.red) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TrueorFalseQuiz()),);
                  }
                  if (colors[index]==Colors.green) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TypeAnswerQuiz()),);
                  }
                },
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 30,
                ),
              ),
              tileColor: Colors.white,
              leading: Icon(
                Ionicons.game_controller,
                color: colors[index],
              ),
              title: Text(quizTypes[index]),
            ),
          );
        },
      ),
    );
  }
}
