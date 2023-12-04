import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeAnswerQuiz extends StatefulWidget {
  const TypeAnswerQuiz({super.key});

  @override
  State<TypeAnswerQuiz> createState() => _TypeAnswerQuizState();
}

class _TypeAnswerQuizState extends State<TypeAnswerQuiz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          centerTitle: true,
          title: Text('Type Answer',
          style: GoogleFonts.quando(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
