import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/add_quizes/add_quiz_page.dart';
import 'package:tetbiq/models/first_quiz_model.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class AddQuizScreen extends StatefulWidget {
  const AddQuizScreen({super.key});

  @override
  State<AddQuizScreen> createState() => _AddQuizScreenState();
}

class _AddQuizScreenState extends State<AddQuizScreen> {
  List<Question> userCreatedQuizes = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Sual Əlavə et',
            style: GoogleFonts.roboto(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sizin yaratığınız sual yoxdur. Sual yaratmaq üçün aşağıdakı düyməyə klikləyin',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddQuizMainPage()));
                },
                child: const ButtonWidget(
                    color: Colors.white,
                    text: 'Sual Yarat',
                    txtColor: Colors.deepPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
