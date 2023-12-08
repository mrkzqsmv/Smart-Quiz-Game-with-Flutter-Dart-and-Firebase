import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetbiq/pages/login_and_register/login_page.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final auth = FirebaseAuth.instance;
  bool isTurnNotifications = false;
  bool isTurnPromotions = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400,
        shadowColor: Colors.black,
        elevation: 25,
        automaticallyImplyLeading: false,
        title: Text(
          'Parametrlər',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ExpansionTile(
                  title: const Text('Bildirişlər'),
                  children: [
                    buildListtile('Özəl mesajlar'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ExpansionTile(
                  title: const Text('Xəbərdarlıq mesajları'),
                  children: [
                    buildListtile('Xəbərdarlıq mesajları'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ExpansionTile(
                  title: const Text('Məxfilik'),
                  children: [
                    buildListtile('Məxfilik'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ExpansionTile(
                  title: const Text('Terms of Use'),
                  children: [
                    Text(
                      '1. Xidmət Şərtləri',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        '1.1. Bu tətbiqi istifadə etmək, aşağıdakı şərtləri qəbul etdiyiniz anlamına gəlir.  '),
                    const Text(
                        '1.2. Tətbiqi istifadə etmək üçün bəzi yaş məhdudiyyətləri ola bilər; bu məhdudiyyətlərə əməl etmək istifadəçinin öhdəliyindədir.'),
                    Text(
                      '2. İstifadəçi Öhdəliyi',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        '2.1. İstifadəçilər, tətbiqi qanunlara uyğun və başqalarının hüquqlarına hörmətlə istifadə etməlidirlər.'),
                    const Text(
                        '2.2. İstifadəçilər, tətbiq üçün göndərdikləri məzmunların içəriyindən tamamilə məsuliyyətdardır.'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const ExpansionTile(
                  title: Text('App FAQ\'s'),
                  children: [Text('Here will be app\'s faqs')],
                ),
                const SizedBox(
                  height: 15,
                ),
                ExpansionTile(
                  title: const Text('Logout'),
                  children: [
                    InkWell(
                      onTap: (){
                        signOut();
                      },
                      child: const ButtonWidget(
                        color: Colors.purple,
                        text: 'Sign Out',
                        txtColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SwitchListTile buildListtile(String title) {
    return SwitchListTile(
        title: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        value: isTurnNotifications,
        onChanged: (value) {
          isTurnNotifications = value;
          setState(() {});
        });
  }

  Future signOut() async {
    try {
      await auth.signOut();
      print('cikis yapildi');
    } catch (e) {
      print(e);
    }
  }
}



// ListTile(
//       title: Text(title),
//       trailing: 