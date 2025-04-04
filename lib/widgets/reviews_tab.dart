import 'package:fibudx/data/reviews.dart';
import 'package:fibudx/ktextstye.dart';
import 'package:flutter/material.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...reviews.map(
            (review) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(review.name![0].toUpperCase()),
                ),
                title: Text(review.name!, style: kTextStyle(15)),
                subtitle: Text(review.text!, style: kTextStyle(12)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text(review.rating.toString(), style: kTextStyle(12)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
