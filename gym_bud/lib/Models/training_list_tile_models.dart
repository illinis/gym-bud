enum TrainingType {
  cardio,
  upperbody,
  lowerbody,
  strength,
  flexibility,
  balance
}

class TrainingProgramListTile {
  String title;
  String tag;
  String description;
  TrainingType type;

  TrainingProgramListTile(
      {required this.title,
      required this.tag,
      required this.description,
      required this.type});
}

class ExerciseListTile {
  String title;
  String description;
  TrainingType type;
  double weight;
  int reps;

  ExerciseListTile(
      {required this.title,
      required this.description,
      required this.type,
      required this.weight,
      required this.reps});
}
