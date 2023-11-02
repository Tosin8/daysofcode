import 'package:flutter/material.dart';

class InteriorHome extends StatelessWidget {
  const InteriorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffd9d9d9),
              ),
              child: const Center(
                  child: Text(
                '0',
                style: TextStyle(fontWeight: FontWeight.w700),
              )),
            ),
          )
        ],
      ),
    );
  }
}
