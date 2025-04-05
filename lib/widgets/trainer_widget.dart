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
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(6),
      child: Column(
        spacing: 10,
        children: [
          Stack(
            children: [
              Container(
                height: isMobile ? 200 : 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
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
              Positioned(
                bottom: 8,
                right: 5,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: isMobile ? 20 : 15,
                    ),
                    Text(
                      trainer.rating!.toStringAsFixed(1),
                      style: kTextStyle(isMobile ? 20 : 15, isBold: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              ...trainer.categories!.map(
                (e) => Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(e.name, style: kTextStyle(12, isBold: true)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
