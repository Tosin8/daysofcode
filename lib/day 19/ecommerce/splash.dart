import 'package:flutter/material.dart';

class day19 extends StatelessWidget {
  const day19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ecommerce/2.jpg'), fit: BoxFit.cover)),
    ));
  }
}
