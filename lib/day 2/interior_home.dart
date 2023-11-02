import 'package:flutter/material.dart';

class InteriorHome extends StatefulWidget {
  const InteriorHome({super.key});

  @override
  State<InteriorHome> createState() => _InteriorHomeState();
}

class _InteriorHomeState extends State<InteriorHome> {
  final List<String> _listItem = [
    'assets/interior_app/1.jpg',
    'assets/interior_app/2.jpg',
    'assets/interior_app/3.jpg',
    'assets/interior_app/4.jpg',
    'assets/interior_app/5.jpg',
    'assets/interior_app/6.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[500],
          drawer: const Drawer(),
          appBar: AppBar(
            iconTheme: const IconThemeData(
                color: Colors.white), // to change color of drawer to white.
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            // elevation: 0,
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
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              )
            ],
          ),
          body: Container(
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Perfecting Your Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 193,
                            height: 59,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffe4dada)),
                            child: const Center(
                                child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    padding: const EdgeInsets.all(8),
                    children: _listItem
                        .map((item) => Card(
                              color: Colors.transparent,
                              elevation: 0,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(item),
                                          fit: BoxFit.cover)),
                                  child: Stack(children: [
                                    Transform.translate(
                                      offset: const Offset(50, -40),
                                      child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 65, vertical: 63),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                          child: const Icon(
                                              Icons.favorite_border,
                                              size: 15)),
                                    ),
                                    Positioned(
                                        left: 18,
                                        top: 127,
                                        child: Row(
                                          children: [
                                            const Text(
                                              '\$30.00',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(width: 20),
                                            Container(
                                              width: 60,
                                              height: 26,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add To Cart',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            )
                                          ],
                                        ))
                                  ])),
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
