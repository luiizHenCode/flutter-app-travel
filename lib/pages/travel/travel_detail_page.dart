import 'package:flutter/material.dart';
import 'package:travel_app/wigets/book_now_button.dart';
import 'package:travel_app/wigets/count_button.dart';

class TravelDetailPage extends StatefulWidget {
  const TravelDetailPage({super.key});

  @override
  State<TravelDetailPage> createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Column(
                children: [
                  Hero(
                    tag: "travel_image",
                    child: Container(
                      width: double.infinity,
                      height: 380.0 + MediaQuery.of(context).padding.top,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets/travel_image.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48.0),
                          bottomRight: Radius.circular(48.0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 16.0,
                            left: 16.0,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 48.0,
                                height: 48.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: const Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                  size: 28.0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16.0,
                            right: 16.0,
                            child: InkWell(
                              onTap: _toggleFavorite,
                              child: Container(
                                width: 48.0,
                                height: 48.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: Icon(
                                  _isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Aurora Sky",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey.shade600,
                                size: 18.0,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                "Norway",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                                size: 18.0,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.yellow.shade800,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              const CountButton(),
                              const SizedBox(width: 16.0),
                              Text(
                                "People",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.black,
                                size: 24.0,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                "Date",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            "About",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget fermentum aliquet, nisl velit aliquam nunc, vitae aliquam nisi nisl eget nunc. Donec euismod, nisl eget fermentum aliquet, nisl velit aliquam nunc, vitae aliquam nisi nisl eget nunc.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget fermentum aliquet, nisl velit aliquam nunc, vitae aliquam nisi nisl eget nunc. Donec euismod, nisl eget fermentum aliquet, nisl velit aliquam nunc, vitae aliquam nisi nisl eget nunc.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 36.0,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.grey.shade100,
                    Colors.grey.shade100.withOpacity(0.0),
                  ],
                ),
              ),
              child: const BookNowButton(),
            ),
          ),
        ],
      ),
    );
  }
}
