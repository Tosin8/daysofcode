import 'package:flutter/material.dart';

class InteriorHome extends StatelessWidget {
  const InteriorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: 360,
                  height: 210,
                  decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/interior_app/header.jpg'),
                          fit: BoxFit.cover),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Container(
                    width: 360,
                    height: 210,
                    decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xff201c1c),
                              Color(0x00201c1c),
                            ],
                            begin: Alignment(-0.01, 1.00),
                            end: Alignment(0.01, -1)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Perfecting Your Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
