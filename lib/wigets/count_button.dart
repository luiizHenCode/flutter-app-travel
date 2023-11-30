import 'package:flutter/material.dart';

class CountButton extends StatefulWidget {
  const CountButton({super.key});

  @override
  State<CountButton> createState() => _CountButtonState();
}

class _CountButtonState extends State<CountButton> {
  int _count = 1;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 1) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 36.0,
            height: 36.0,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: _decrement,
              icon: const Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 36.0,
            alignment: Alignment.center,
            child: Text(
              _count.toString(),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 36.0,
            height: 36.0,
            child: IconButton(
              padding: EdgeInsets.zero,
              highlightColor: Colors.orange.withOpacity(0.5),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
              ),
              onPressed: _increment,
              icon: Icon(
                Icons.add,
                color: Colors.grey.shade100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
