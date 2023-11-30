import 'package:flutter/material.dart';
import 'package:travel_app/wigets/travel_filter_button.dart';

class TravelFilter extends StatelessWidget {
  const TravelFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 24.0, right: 40.0),
              child: Row(
                children: [
                  TravelFilterButton(
                    label: "Mountains",
                    isSelected: true,
                  ),
                  TravelFilterButton(
                    label: "Beaches",
                  ),
                  TravelFilterButton(
                    label: "Cities",
                  ),
                  TravelFilterButton(
                    label: "Lakes",
                  ),
                  TravelFilterButton(
                    label: "Forests",
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.grey.shade100,
                    Colors.white.withOpacity(0),
                  ],
                ),
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Colors.grey.shade100,
                    Colors.white.withOpacity(0),
                  ],
                ),
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
