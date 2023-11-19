import 'package:daysofcode/day%207/food_restuarant.dart';
import 'package:flutter/material.dart';

import 'day 18/movie_ui/day_18.dart';
import 'day 8/day8.dart';

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
      home: const day18(),
    );
  }
}
