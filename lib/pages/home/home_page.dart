import 'package:flutter/material.dart';
import 'package:travel_app/wigets/avatar.dart';
import 'package:travel_app/wigets/bottom_bar_item.dart';
import 'package:travel_app/wigets/search_input.dart';
import 'package:travel_app/wigets/top_places.dart';
import 'package:travel_app/wigets/travel_filter.dart';
import 'package:travel_app/wigets/trending_travels.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    const Avatar(),
                    const SizedBox(width: 16.0),
                    const Text.rich(
                      TextSpan(
                        text: "Hi, ",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: "Angela!",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                            Colors.orange.withOpacity(0.3),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                child: Text.rich(
                  TextSpan(
                    text: "Find places for your\nbest ",
                    style: TextStyle(
                      fontSize: 28.0,
                      height: 1.2,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "travel",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: SearchInput(),
              ),
              const SizedBox(height: 8.0),
              const TravelFilter(),
              const TrendingTravels(),
              const SizedBox(height: 8.0),
              const TopPlaces()
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade900,
          child: Container(
            height: 60.0,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomBarItem(
                  icon: Icons.home_rounded,
                  isSelected: true,
                ),
                BottomBarItem(
                  icon: Icons.explore_outlined,
                  isSelected: false,
                ),
                BottomBarItem(
                  icon: Icons.favorite_border_outlined,
                  isSelected: false,
                ),
                BottomBarItem(
                  icon: Icons.account_circle_outlined,
                  isSelected: false,
                ),
              ],
            ),
          ),
        ));
  }
}
