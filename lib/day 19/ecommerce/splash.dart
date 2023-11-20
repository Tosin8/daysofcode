import 'package:flutter/material.dart';

class day19 extends StatelessWidget {
  const day19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ecommerce/2.jpg'), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey.withOpacity(0.4), Colors.black38],
              begin: Alignment.topCenter),
        ),
        child: Column(
          children: [Text('Brand New Perspective')],
        ),
      ),
    ));
  }
}
