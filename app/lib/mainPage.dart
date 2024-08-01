import 'package:app/homepage.dart';
import 'package:app/profileScreen.dart';
import 'package:app/settingScreen.dart';
import 'package:flutter/material.dart';

class MainPagewithBottomNav extends StatefulWidget {
  const MainPagewithBottomNav({super.key});

  @override
  State<MainPagewithBottomNav> createState() => _MainPagewithBottomNavState();
}

class _MainPagewithBottomNavState extends State<MainPagewithBottomNav> {
  int _currentIndex = 0;

  final List<Widget> _screens = [Homepage(), ProfileScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bottom Nav"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ]),
      body: _screens[_currentIndex],
    );
  }
}
