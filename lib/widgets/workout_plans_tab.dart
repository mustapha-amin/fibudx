import 'package:fibudx/data/workout_plans.dart';
import 'package:fibudx/ktextstye.dart';
import 'package:flutter/material.dart';

class WorkoutPlansTab extends StatelessWidget {
  const WorkoutPlansTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          ...workoutPlans.map(
            (plan) => Column(
              children: [
                Text(plan.title, style: kTextStyle(22, isBold: true)),
                SizedBox(height: 10),
                Text(
                  plan.description,
                  textAlign: TextAlign.center,
                  style: kTextStyle(16),
                ),
                SizedBox(height: 10),
                Text(
                  "🔥 ${plan.caloriesBurned} Calories | ⏳ ${plan.duration} min",
                  style: kTextStyle(15),
                ),
                SizedBox(height: 10),
                ExpansionTile(
                  title: Text("Exercises", style: kTextStyle(18, isBold: true)),
                  iconColor: Colors.grey,
                  collapsedIconColor: Colors.grey,
                  children: [
                    ...plan.exercises.map(
                      (exercise) => ListTile(
                        leading: Icon(
                          Icons.fitness_center,
                          color: Colors.purple,
                        ),
                        title: Text(exercise, style: kTextStyle(12)),
                      ),
                    ),
                  ],
                ),
                if (workoutPlans.last !=
                    plan) 
                  Divider(color: Colors.grey[300]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
