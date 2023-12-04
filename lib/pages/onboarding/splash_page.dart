import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/pages/onboarding/first_onboard_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const FirstOnboardPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              FlutterLogo(
                size: MediaQuery.of(context).size.width / 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'AzerIntel',
                style: GoogleFonts.quando(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Spacer(),
              const CircularProgressIndicator(
                color: Colors.white,
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
