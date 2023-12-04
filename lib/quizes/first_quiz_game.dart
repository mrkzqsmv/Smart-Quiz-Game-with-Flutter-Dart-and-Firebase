import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:tetbiq/models/first_quiz_model.dart';

class FirstQuizGame extends StatefulWidget {
  const FirstQuizGame({super.key});

  @override
  State<FirstQuizGame> createState() => _FirstQuizGameState();
}

class _FirstQuizGameState extends State<FirstQuizGame> {

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearProgressBar(
                    maxSteps: 10,
                    progressType: LinearProgressBar.progressTypeDots,
                    currentStep: 0,
                    dotsActiveSize: 20,
                    dotsInactiveSize: 15,
                    dotsSpacing: const EdgeInsets.all(2),
                    progressColor: Colors.deepPurple,
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Ionicons.file_tray_full,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quiz',
                    style: GoogleFonts.quando(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}




