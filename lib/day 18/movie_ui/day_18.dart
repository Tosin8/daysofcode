import 'package:flutter/material.dart';

class day18 extends StatelessWidget {
  const day18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
               topRight: Radius.circular(30)),
        ),
      ),
    ));
  }
}
