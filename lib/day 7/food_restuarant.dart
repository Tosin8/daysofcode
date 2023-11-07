import 'package:flutter/material.dart';

class RestaurantUI extends StatelessWidget {
  const RestaurantUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/food_ui/1.jpg'), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.8),
          Colors.black.withOpacity(.2)
        ], begin: Alignment.bottomCenter)),
      ),
    ));
  }
}
