import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tetbiq/quizes/choose_game_type.dart';
import 'package:tetbiq/quizes/first_quiz_game.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Mixed Questions',
    'Movie',
    'Music',
    'Education',
    'Country',
    'Games',
    'Business',
    'Science',
    'General Knowledge',
  ];

  List<Icon> icons = [
    const Icon(Icons.question_answer),
    const Icon(Icons.movie),
    const Icon(Icons.music_note),
    const Icon(Icons.book),
    const Icon(Icons.location_city),
    const Icon(Icons.games),
    const Icon(Icons.business),
    const Icon(Icons.science),
    const Icon(Icons.generating_tokens_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: icons[index],
              ),
              tileColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text(
                categories[index].toUpperCase(),
                style: GoogleFonts.quando(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ChooseGameType()));
                },
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 40,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
