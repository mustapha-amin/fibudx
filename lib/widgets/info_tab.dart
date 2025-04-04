import 'package:fibudx/ktextstye.dart';
import 'package:fibudx/models/trainer.dart';
import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget {
  final Trainer trainer;
  const InfoTab({required this.trainer, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 5,
        children: [
          Stack(
            children: [
              Image.network(
                trainer.imageUrl!,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.4),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Wrap(
                  children: [
                    ...trainer.categories!.map(
                      (category) => Container(
                        margin: EdgeInsets.only(right: 5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff2b2342).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          category.name,
                          style: kTextStyle(
                            15,
                            color: Color.fromARGB(255, 152, 122, 239),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trainer.name!,
                  style: kTextStyle(
                    20,
                    isBold: true,
                  ).copyWith(letterSpacing: 3),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.book, color: Colors.grey[300]),
                    SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .9,
                      child: Text(trainer.education!, style: kTextStyle(15)),
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
                      "${trainer.yearsOfExperience} years of experience",
                      style: kTextStyle(15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
