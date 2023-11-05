import 'package:flutter/material.dart';

class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/travel_ui/header.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(.1)
                  ], begin: Alignment.bottomCenter)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'What would you like to find? ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                              hintText: 'Search for Cities, places...'),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Destination',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
