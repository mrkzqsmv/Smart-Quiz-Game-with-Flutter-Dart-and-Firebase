// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tetbiq/add_quizes/add_quiz.dart';
import 'package:tetbiq/new_pages/find_friend.dart';
import 'package:tetbiq/new_pages/home_page.dart';
import 'package:tetbiq/pages/profile_pages/profile_page.dart';
import 'package:tetbiq/pages/profile_pages/settings_page.dart';
import 'package:tetbiq/pages/profile_pages/users_profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    FindFriend(),
    AddQuizScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade100,
        selectedIconTheme: const IconThemeData(
          color: Colors.deepPurple,
          size: 25,
        ),
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page),
            label: 'Find Friend',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Add Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
