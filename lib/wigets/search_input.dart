import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },
          decoration: const InputDecoration(
            hintText: "Found place...",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              size: 28.0,
              color: Colors.orange.shade700,
            ),
          ),
        ),
      ],
    );
  }
}
