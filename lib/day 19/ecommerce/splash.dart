import 'package:flutter/material.dart';

class day19 extends StatelessWidget {
  const day19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ecommerce/2.jpg'), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey.withOpacity(0.4), Colors.black38],
              begin: Alignment.topCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 120,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Brand New Perspective',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              const SizedBox(height: 12),
              const Text(
                'Let\'s start with your summer collection',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 12),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: const Align(
                    alignment: Alignment.center, child: Text('Start Shopping')),
              ),
              const SizedBox(height: 12),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: const Align(
                    alignment: Alignment.center, child: Text('Create Account')),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ));
  }
}
