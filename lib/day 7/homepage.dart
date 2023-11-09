import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          actions: const [
            Icon(Icons.shopping_bag_outlined),
          ],
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const FadeIn(
                      child: Text(
                        'Food Delivery',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      child: ListView(scrollDirection: Axis.horizontal),
                    )
                  ],
                ))
          ],
        )));
  }
}
