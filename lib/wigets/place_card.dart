import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("/travel-detail");
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        width: double.infinity,
        height: 96.0,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              width: 76,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: const DecorationImage(
                  image: AssetImage("assets/place_image.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Torre Eiffel",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 16.0,
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        "4.9",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow[700]),
                      ),
                      const SizedBox(width: 8.0),
                    ],
                  ),
                  const Text("Paris, France"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
