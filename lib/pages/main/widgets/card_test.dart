import 'package:assure/models/card_test_short.dart';
import 'package:flutter/material.dart';

class CardTest extends StatelessWidget {
  const CardTest({
    super.key,
    required this.cardTestShort,
  });

  final CardTestShort cardTestShort;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final secondaryColor = Theme.of(context).colorScheme.surface;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            cardTestShort.title,
            style: TextStyle(
              fontSize: 24,
              color: primaryColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardTestShort.username,
                style: TextStyle(
                  fontSize: 12,
                  color: secondaryColor,
                ),
              ),
              Text(
                cardTestShort.date,
                style: TextStyle(
                  fontSize: 12,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
          Text(
            cardTestShort.description,
            style: TextStyle(
              fontSize: 16,
              color: primaryColor,
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Text(
                cardTestShort.countPasses,
                style: TextStyle(
                  fontSize: 12,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(width: 2),
              Icon(
                Icons.account_circle,
                color: secondaryColor,
              ),

              // Text(
              //   cardTestShort.rating,
              //   style: TextStyle(
              //     fontSize: 12,
              //     color: secondaryColor,
              //   ),
              // ),
              // Icon(
              //   Icons.grade,
              //   color: secondaryColor,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
