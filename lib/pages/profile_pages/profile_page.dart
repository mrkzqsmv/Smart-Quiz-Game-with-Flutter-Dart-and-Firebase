import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tetbiq/pages/login_and_register/login_page.dart';
import 'package:tetbiq/pages/profile_pages/users_profile.dart';
import 'package:tetbiq/quizes/categories.dart';
import 'package:tetbiq/widgets/button_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final auth = FirebaseAuth.instance;
  PlatformFile? pickedFile;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;

    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/user.jpg',
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hi, New User',
                        style: GoogleFonts.quando(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Container(
                        child: Row(
                          children: [
                            const Icon(Icons.search),
                            IconButton(
                              onPressed: () {
                                try {
                                  auth.signOut();
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                } catch (e) {
                                  print(e);
                                }
                              },
                              icon: const Icon(
                                Icons.output_sharp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          createColumn(
                              'My Quiz',
                              const Icon(
                                Ionicons.file_tray,
                                size: 30,
                              )),
                          createColumn(
                              'Plays',
                              const Icon(
                                Ionicons.play,
                                size: 30,
                              )),
                          createColumn(
                              'Players',
                              const Icon(
                                Ionicons.people,
                                size: 30,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Play Braingames together\nwith your friends now',
                        style: GoogleFonts.quando(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(15)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const UsersPage()));
                          },
                          child: const Text('Find Friends'))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discover Quiz',
                            style: GoogleFonts.quando(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Categories()));
                            },
                            child: Text(
                              'See All',
                              style: GoogleFonts.quando(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     buildContainer(
                //       'assets/images/first_img.png',
                //       'Walk around the world\n with Geography Quiz',
                //       'Dewayne Jaden',
                //     ),
                //     buildContainer(
                //       'assets/images/second_img.png',
                //       'How smart are you?\nProve your knowledge',
                //       'Katie Madeline',
                //     ),
                //   ],
                // ),
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 23.0, horizontal: 6),
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/first_img.png',
                                width: 120,
                              ),
                              Text(
                                'Walk around the world with\nGeography Quiz',
                                style: GoogleFonts.quando(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/second_img.png',
                                width: 120,
                              ),
                              Text(
                                'Walk around the world with\n Geography Quiz',
                                style: GoogleFonts.quando(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/third_img.png',
                                width: 120,
                              ),
                              Text(
                                'Walk around the world with\n Geography Quiz',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.quando(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Categories()));
                  },
                  child: const ButtonWidget(
                      color: Colors.white,
                      text: 'Categories',
                      txtColor: Colors.deepPurple),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Top Authors',
                      style: GoogleFonts.quando(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 23.0, horizontal: 6),
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            buildAuthorContainer(
                                'assets/images/user.jpg', 'John Doe'),
                            buildAuthorContainer(
                                'assets/images/girl_img.jpg', 'Isabella Alisa'),
                            buildAuthorContainer(
                                'assets/images/boy1_img.jpg', 'Ali'),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  createColumn(String text, Icon icon) {
    return Column(
      children: [
        Text(
          text,
          style: GoogleFonts.quando(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        icon,
      ],
    );
  }

  buildContainer(String imgPath, String title, String authorName) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Image.asset(
            imgPath,
            width: 70,
          ),
          Text(title),
          Text(authorName),
        ],
      ),
    );
  }

  buildAuthorContainer(String imgPath, String authorName) {
    return Container(
      width: 160.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imgPath,
            width: 120,
          ),
          const SizedBox(height: 10,),
          Text(
            authorName,
            textAlign: TextAlign.center,
            style: GoogleFonts.quando(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
