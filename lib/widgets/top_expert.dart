import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/models/trainer.dart';
import 'package:flutter/material.dart';

class TopExpert extends StatelessWidget {
  final Trainer trainer;
  final bool isMobile;
  const TopExpert({required this.isMobile, required this.trainer, super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          Container(
            width: isMobile ? screen.width * .3 : screen.width * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
                image: NetworkImage(trainer.imageUrl!),
              ),
            ),
          ),
          Positioned(
            bottom: 3,
            left: 4,
            child: Text(trainer.name!, style: kTextStyle(13, isBold: true)),
          ),
        ],
      ),
    );
  }
}
