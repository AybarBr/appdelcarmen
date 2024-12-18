import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'places_screen.dart';
import 'restaurants_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explora la Ciudad',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
      routes: {
        '/places': (context) => const PlacesScreen(),
        '/restaurants': (context) => const RestaurantsScreen(),
      },
    );
  }
}
