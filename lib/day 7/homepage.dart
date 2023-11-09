import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          actions: [
            Icon(Icons.shopping_bag_outlined),
          ],
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0))
          ],
        )));
  }
}
