import 'dart:math';

import 'package:fibudx/data/trainer_category.dart';
import 'package:fibudx/data/trainers.dart';
import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/widgets/bottom_sheet.dart';
import 'package:fibudx/widgets/top_expert.dart';
import 'package:fibudx/widgets/trainer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ScrollController scrollController = ScrollController();
  List<String> categories = [
    "All",
    ...TrainerCategory.values.map((e) => e.name),
  ];
  ValueNotifier<int> selectedCategory = ValueNotifier(0);

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
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          return Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            thickness: 8,
            interactive: true,
            radius: Radius.circular(4),
            child: ListView(
              controller: scrollController,
              padding: EdgeInsets.all(15),
              children: [
                SizedBox(height: 20),
                Text("Top experts 🔥", style: kTextStyle(20, isBold: true)),
                SizedBox(height: 20),
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
                              child: TopExpert(
                                isMobile: isMobile,
                                trainer: trainer,
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ValueListenableBuilder(
                  valueListenable: selectedCategory,
                  builder: (context, categoryVal, _) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...categories.map(
                            (category) => ChoiceChip(
                              showCheckmark: false,
                              selected:
                                  selectedCategory.value ==
                                  categories.indexOf(category),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              onSelected: (value) {
                                selectedCategory.value = categories.indexOf(
                                  category,
                                );
                              },
                              color: WidgetStatePropertyAll(
                                categoryVal == categories.indexOf(category)
                                    ? Color(0xff724ae6)
                                    : Colors.grey[800],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelPadding: EdgeInsets.all(5),
                              label: Text(
                                category,
                                style: kTextStyle(
                                  12,
                                  isBold: true,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: selectedCategory,
                  builder: (context, category, _) {
                    var filteredTrainers = trainers.where(
                      (trainer) =>
                          category == 0
                              ? true
                              : trainer.categories!.contains(
                                TrainerCategory.values.elementAt(category - 1),
                              ),
                    );

                    return isMobile
                        ? Column(
                          children: [
                            ...filteredTrainers.map(
                              (trainer) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
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
                                  child: TrainerWidget(
                                    isMobile: isMobile,
                                    trainer: trainer,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                        : GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1.5,
                              ),
                          itemCount: filteredTrainers.length,
                          itemBuilder: (context, index) {
                            var trainer = filteredTrainers.elementAt(index);
                            return InkWell(
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
                              child: TrainerWidget(
                                isMobile: isMobile,
                                trainer: trainer,
                              ),
                            );
                          },
                        );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
