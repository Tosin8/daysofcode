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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Taking Order \nFor Delivery',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(
                      Icons.near_me_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'See resturants nearby by \nsearching for nearest location',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Colors.yellow, Colors.orange],
                      )),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: const Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )),
    ));
  }
}
