import 'dart:math';

import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/models/trainer.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AppBottomSheet extends StatelessWidget {
  final Trainer trainer;
  const AppBottomSheet({required this.trainer, super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return SizedBox(
      height: screen.height * .75,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              unselectedLabelStyle: kTextStyle(15, color: Colors.grey[300]!),
              labelStyle: kTextStyle(15, isBold: true, color: Colors.white),
              indicatorColor: Color(0xff724ae6),
              tabs: [
                Tab(text: "Info"),
                Tab(text: "Workout Plans"),
                Tab(text: "Reviews"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Info Tab
                  SingleChildScrollView(
                    child: Column(
                      spacing: 5,
                      children: [
                        Image.network(trainer.imageUrl!),
                        Row(
                          children: [
                            Icon(Icons.person, color: Colors.grey[300]),
                            SizedBox(width: 5),
                            Text(
                              trainer.name!,

                              style: kTextStyle(
                                20,
                                isBold: true,
                              ).copyWith(letterSpacing: 3),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey[300]),
                            SizedBox(width: 5),
                            Text(trainer.location!, style: kTextStyle(15)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.info, color: Colors.grey[300]),
                            SizedBox(width: 5),
                            Text(
                              "${Random().nextInt(10) + 2} years of experience",
                              style: kTextStyle(15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Workout Plans Tab
                  Center(
                    child: Text(
                      "Workout plans will be displayed here.",
                      style: kTextStyle(14),
                    ),
                  ),
                  // Reviews Tab
                  Center(
                    child: Text(
                      "Reviews will be displayed here.",
                      style: kTextStyle(14),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ShadButton(
                    backgroundColor: Color(0xff724ae6),
                    onPressed: () {},
                    child: Text("Chat", style: kTextStyle(13, isBold: true)),
                  ),
                ),
                Expanded(
                  child: ShadButton(
                    backgroundColor: Color(0xff724ae6),
                    onPressed: () {
                      // Book action
                    },
                    child: Text("Book", style: kTextStyle(13, isBold: true)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
