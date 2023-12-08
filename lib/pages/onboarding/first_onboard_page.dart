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
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/first_img.png',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Sizin üçün əla Mobillik',
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'AzerIntel ilə rahatlıqla əlaqə qurun, təmin edin və istədiyiniz zaman və istədiyiniz yerdə iştirak edin.',
                style: GoogleFonts.roboto(
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
                  text: 'Növbəti',
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
                  text: 'Giriş',
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
