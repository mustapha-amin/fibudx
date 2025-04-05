import 'dart:math';

import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/models/trainer.dart';
import 'package:fibudx/widgets/info_tab.dart';
import 'package:fibudx/widgets/reviews_tab.dart';
import 'package:fibudx/widgets/workout_plans_tab.dart';
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
              unselectedLabelStyle: kTextStyle(13, color: Colors.grey[300]!),
              labelStyle: kTextStyle(14, isBold: true, color: Colors.white),
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
                  InfoTab(trainer: trainer),
                  WorkoutPlansTab(),
                  ReviewsTab(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ShadButton(
                    backgroundColor: Colors.grey,
                    onPressed: () {
                      showShadDialog(
                        context: context,
                        builder: (context) {
                          return ShadDialog.alert(
                            title: Text(
                              "Coming soon",
                              style: kTextStyle(18, color: Colors.white),
                            ),
                            constraints: BoxConstraints(maxWidth: 350),

                            radius: BorderRadius.circular(20),

                            actions: [
                              ShadButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("Chat", style: kTextStyle(13, isBold: true)),
                  ),
                ),
                Expanded(
                  child: ShadButton(
                    backgroundColor: Color(0xff724ae6),
                    onPressed: () {
                      showShadDialog(
                        context: context,
                        builder: (context) {
                          return ShadDialog.alert(
                            title: Text(
                              "Trainer Booked!",
                              style: kTextStyle(18, color: Colors.black),
                            ),
                            constraints: BoxConstraints(maxWidth: 350),

                            radius: BorderRadius.circular(20),
                            description: Column(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Color(0xff724ae6),
                                  size: 100,
                                ),
                                Text(
                                  "You have successfully booked ${trainer.name} for your training sessions.",
                                  textAlign: TextAlign.center,
                                  style: kTextStyle(14),
                                ),
                              ],
                            ),
                            actions: [
                              ShadButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
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
