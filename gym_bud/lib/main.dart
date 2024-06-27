import 'package:flutter/material.dart';
import 'package:gym_bud/Core/colors.dart';
import 'package:gym_bud/Pages/HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Buddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        appBarTheme: const AppBarTheme(
          backgroundColor: kConstrastPrimaryColor,
          titleTextStyle: TextStyle(
              color: kDarkFontColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: kContrastSecondaryColor,
          selectedItemColor: kConstrastPrimaryColor,
          unselectedItemColor: kDarkFontColor,
        ),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
