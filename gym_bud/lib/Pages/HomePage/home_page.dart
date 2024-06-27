// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:gym_bud/Core/colors.dart';
import 'package:gym_bud/Pages/AddPage/workout_page.dart';
import 'package:gym_bud/Pages/HomePage/home_page_content.dart';
import 'package:gym_bud/Pages/LibraryPage/library_page.dart';
import 'package:gym_bud/Pages/MealPage/meal_page.dart';
import 'package:gym_bud/Pages/MenuPage/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  final List<Widget> _pages = const [
    MealPage(),
    WorkoutPage(),
    HomePageContent(),
    LibraryPage(),
    MenuPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        leading: const Icon(Icons.fitness_center),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_rounded,
            ),
            label: 'Meal',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
            ),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
            ),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Menu',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
