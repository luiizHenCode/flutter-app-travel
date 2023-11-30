import 'package:flutter/material.dart';
import 'package:travel_app/wigets/place_card.dart';

class TopPlaces extends StatelessWidget {
  const TopPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Top places",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.expand_more,
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(height: 16.0),
          ...List.generate(
            5,
            (index) => const PlaceCard(),
          )
        ],
      ),
    );
  }
}
