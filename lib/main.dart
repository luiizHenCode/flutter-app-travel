import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/home_page.dart';
import 'package:travel_app/pages/travel/travel_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/travel-detail": (context) => const TravelDetailPage(),
      },
    );
  }
}
