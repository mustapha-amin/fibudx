import 'dart:math';

import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/models/trainer.dart';
import 'package:flutter/material.dart';

class TrainerWidget extends StatelessWidget {
  final Trainer trainer;
  final bool isMobile;
  const TrainerWidget({
    super.key,
    required this.isMobile,
    required this.trainer,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: isMobile ? 300 : 400,
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
          bottom: 8,
          left: 5,
          child: Text.rich(
            TextSpan(
              text: trainer.name,
              style: kTextStyle(isMobile ? 25 : 20, isBold: true),
              children: [
                TextSpan(
                  text: "\n${trainer.charge} won",
                  style: kTextStyle(isMobile ? 18 : 14, isBold: true),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
