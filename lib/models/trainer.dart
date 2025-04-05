import 'dart:math';

import 'package:fibudx/data/trainer_category.dart';

class Trainer {
  String? name;
  String? imageUrl;
  String? location;
  String? bio;
  String? education;
  int? yearsOfExperience;
  int? charge;
  List<TrainerCategory>? categories;
  double? rating;

  Trainer({
    this.name,
    this.imageUrl,
    this.location,
    this.bio,
    this.education,
    this.charge,
  }) : yearsOfExperience = Random().nextInt(10) + 2,
       categories =
           List.generate(
             3,
             (index) =>
                 TrainerCategory.values[Random().nextInt(
                   TrainerCategory.values.length,
                 )],
           ).toSet().toList(),
       rating = 4 + (Random().nextDouble());
}
