import 'package:daysofcode/day%201/travel_home.dart';
import 'package:daysofcode/day%202/interior_home.dart';
import 'package:daysofcode/day%205/travel_ui.dart';
import 'package:daysofcode/day%207/food_restuarant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RestaurantUI(),
    );
  }
}
