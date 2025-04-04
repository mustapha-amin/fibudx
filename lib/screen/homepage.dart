import 'dart:math';

import 'package:fibudx/data/trainers.dart';
import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/widgets/bottom_sheet.dart';
import 'package:fibudx/widgets/top_expert.dart';
import 'package:fibudx/widgets/trainer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: SvgPicture.network(
          'https://fibud.kr/assets/logo-CHMDW23Y.svg',
          fit: BoxFit.cover,
          height: 30,
        ),
        actions: [
          ShadIconButton(
            backgroundColor: Color(0xff724ae6),
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text("Top experts 🔥", style: kTextStyle(20, isBold: true)),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...trainers
                      .take(5)
                      .map(
                        (trainer) => InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.grey[900],
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return AppBottomSheet(trainer: trainer);
                              },
                            );
                          },
                          child: TopExpert(trainer: trainer),
                        ),
                      ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ...trainers.map(
              (trainer) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.grey[900],
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return AppBottomSheet(trainer: trainer);
                      },
                    );
                  },
                  child: TrainerWidget(trainer: trainer),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
