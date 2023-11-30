import 'package:flutter/material.dart';
import 'package:travel_app/wigets/travel_card.dart';

class TrendingTravels extends StatelessWidget {
  const TrendingTravels({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) =>
            const Hero(tag: "travel_image", child: TravelCard()),
        separatorBuilder: (ctx, index) => const SizedBox(width: 16.0),
        itemCount: 10,
      ),
    );
  }
}
