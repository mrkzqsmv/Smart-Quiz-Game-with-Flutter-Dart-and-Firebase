import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/pages/login_and_register/login_page.dart';
import 'package:tetbiq/pages/onboarding/second_onboard_page.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class FirstOnboardPage extends StatefulWidget {
  const FirstOnboardPage({super.key});

  @override
  State<FirstOnboardPage> createState() => _FirstOnboardPageState();
}

class _FirstOnboardPageState extends State<FirstOnboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/first_img.png',
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Great Mobility for you',
                style: GoogleFonts.quando(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Generate, distrubute, and engage with AzerIntel at your convenience, anytime and anywhere you prefer.',
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
                      builder: (context) => const SecondOnboardPage(),
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
    );
  }
}
