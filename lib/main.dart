import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tetbiq/firebase_options.dart';
import 'package:tetbiq/new_pages/battle_pass_page.dart';
import 'package:tetbiq/new_pages/find_friend.dart';
import 'package:tetbiq/new_pages/home_page.dart';
import 'package:tetbiq/pages/onboarding/first_onboard_page.dart';
import 'package:tetbiq/pages/onboarding/splash_page.dart';
import 'package:tetbiq/quizes/first_quiz_game.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}


