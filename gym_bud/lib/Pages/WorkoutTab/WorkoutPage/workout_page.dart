import 'package:flutter/material.dart';
import 'package:gym_bud/Core/colors.dart';
import 'package:gym_bud/Models/training_list_tile_models.dart';
import 'package:gym_bud/Pages/WorkoutTab/CreateWorkoutPage/create_workout_page.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    List<TrainingProgramListTile> trainingPrograms = [];

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          if (trainingPrograms.isEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: trainingPrograms.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(trainingPrograms[index].title),
                    subtitle: Text(trainingPrograms[index].description),
                    tileColor: kContrastSecondaryColor,
                    leading: const Icon((Icons.fitness_center)),
                    onTap: () => {},
                  );
                },
              ),
            )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: kLightFontColor,
          onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateWorkoutPage()))
              },
          child: const Icon(
            Icons.add,
            color: kConstrastPrimaryColor,
          )),
    );
  }
}
