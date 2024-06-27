import 'package:flutter/material.dart';
import 'package:gym_bud/Core/colors.dart';
import 'package:gym_bud/Pages/MealTab/CreateMealPage/create_meal_page.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: kLightFontColor,
          onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateMealPage()))
              },
          child: const Icon(
            Icons.add,
            color: kConstrastPrimaryColor,
          )),
    );
  }
}
