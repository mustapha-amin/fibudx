class WorkoutPlan {
  final String title;
  final String description;
  final int duration;
  final int caloriesBurned;
  final List<String> exercises;

  WorkoutPlan({
    required this.title,
    required this.description,
    required this.duration,
    required this.caloriesBurned,
    required this.exercises,
  });
}
