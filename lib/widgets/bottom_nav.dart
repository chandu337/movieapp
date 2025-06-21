import 'package:flutter/material.dart';
import 'package:ottapp/screens/home_screen.dart';
import 'package:ottapp/screens/movie_category.dart';
import 'package:ottapp/screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required Widget child});

  @override
  State<BottomNav> createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {
 

  final List<Widget> screens = [
    HomePage(),MovieCategory(),SimpleProfilePage()
  ];
   int _currentIndex = 0;

  void onTapBtn(int index) {
    setState(() {
      _currentIndex = index;
      return;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapBtn,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.yellow,
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")

        ],
      ),
    );
  }
}
