import 'package:flutter/material.dart';
import 'package:foodation/screens/profile_screen.dart';
import 'package:foodation/screens/recipe_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../screens/home/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        child: GNav(
          onTabChange: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          activeColor: const Color(0xffC21010),
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              text: 'Beranda',
            ),
            GButton(
              icon: Icons.soup_kitchen_rounded,
              text: 'Masak',
            ),
            GButton(
              icon: Icons.person,
              text: 'Akun',
            ),
          ],
        ),
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const HomeScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: const CookScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: const InfoScreen(),
        ),
      ][currentPageIndex],
    );
  }
}
