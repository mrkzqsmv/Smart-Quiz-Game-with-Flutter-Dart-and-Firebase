import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/pages/login_and_register/login_page.dart';
import 'package:tetbiq/pages/login_and_register/register_page.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class ThirdOnboardPage extends StatefulWidget {
  const ThirdOnboardPage({super.key});

  @override
  State<ThirdOnboardPage> createState() => _ThirdOnboardPageState();
}

class _ThirdOnboardPageState extends State<ThirdOnboardPage> {
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/third_img.png',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Dostlarla oynayın',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Viktorina problemlərində iştirak edin və interaktiv və əyləncəli təcrübə üçün dostlarınızla rəqabət aparın.',
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
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                  child: const ButtonWidget(
                    color: Colors.deepPurple,
                    text: 'Qeydiyyat',
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
      ),
    );
  }
}
