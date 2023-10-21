import 'package:flutter/material.dart';
import 'package:foodation/screens/home_screen.dart';
import 'package:foodation/screens/login_screen.dart';
import 'package:foodation/screens/regis_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    LoginScreen(),
    RegisScreen(),
  ];
  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.soup_kitchen_rounded), label: 'Cook'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Information'),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xffC21010),
      ),
    );
  }
}
