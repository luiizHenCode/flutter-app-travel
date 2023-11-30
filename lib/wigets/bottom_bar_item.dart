import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.icon,
    this.isSelected = false,
  });

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.0,
      height: 48.0,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          isSelected ? 0.1 : 0.0,
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.orangeAccent : Colors.white.withOpacity(0.8),
      ),
    );
  }
}
