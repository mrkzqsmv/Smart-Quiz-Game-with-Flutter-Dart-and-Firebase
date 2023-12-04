import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/pages/login_and_register/login_page.dart';
import 'package:tetbiq/pages/onboarding/third_onboard_page.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class SecondOnboardPage extends StatefulWidget {
  const SecondOnboardPage({super.key});

  @override
  State<SecondOnboardPage> createState() => _SecondOnboardPageState();
}

class _SecondOnboardPageState extends State<SecondOnboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/second_img.png',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Fun and Rewarding',
                  style: GoogleFonts.quando(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Discover captivating and enlightening quizzes to enhance your understanding in an enjoyable way.',
                  style: GoogleFonts.quando(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThirdOnboardPage(),
                      ),
                    );
                  },
                  child: const ButtonWidget(
                    color: Colors.deepPurple,
                    text: 'Next',
                    txtColor: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const ButtonWidget(
                    color: Colors.deepPurple,
                    text: 'Sign In',
                    txtColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
