import 'dart:math';

import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/models/trainer.dart';
import 'package:flutter/material.dart';

class TrainerWidget extends StatelessWidget {
  final Trainer trainer;
  const TrainerWidget({super.key, required this.trainer});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: double.infinity,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: NetworkImage(trainer.imageUrl!),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 5,
          child: Text.rich(
            TextSpan(
              text: trainer.name,
              style: kTextStyle(25, isBold: true),
              children: [
                TextSpan(
                  text: "\n${Random().nextInt(30000) + 10000} won",
                  style: kTextStyle(18, isBold: true),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
