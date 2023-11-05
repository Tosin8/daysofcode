import 'package:flutter/material.dart';

class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Container(
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
                Text(
                  'What would you like to find? ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Search for Cities'),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        )));
  }
}
