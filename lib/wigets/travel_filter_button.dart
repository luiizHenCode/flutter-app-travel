import 'package:flutter/material.dart';

class TravelFilterButton extends StatelessWidget {
  const TravelFilterButton({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0,
        ),
        margin: const EdgeInsets.only(
          left: 16.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.black.withOpacity(
                  isSelected ? 1.0 : 0.5,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
            Positioned(
              bottom: 0,
              width: 8.0,
              height: 8.0,
              child: Container(
                decoration: BoxDecoration(
                    color: isSelected
                        ? Colors.orange.shade700
                        : Colors.transparent,
                    shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
