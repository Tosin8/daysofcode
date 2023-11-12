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
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FadeIn(
                    child: Text(
                      'Food Delivery',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeCategory(isActive: true, title: 'Pizza'),
                        makeCategory(isActive: false, title: 'Salad'),
                        makeCategory(isActive: false, title: 'Desert'),
                        makeCategory(isActive: false, title: 'Burgers'),
                        makeCategory(isActive: false, title: 'Kebab'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Free Delivery',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [makeItem(image: 'assets/travel_ui/2.jpg')],
            ),
          )),
          SizedBox(height: 30),
        ])));
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.0 / 1,
      child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: isActive ? Colors.yellow[700] : Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Align(
            child: Text(
              title,
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.grey[500],
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          )),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.4,
      child: GestureDetector(
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain)),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3)
                ],
                begin: Alignment.bottomCenter,
                stops: [.2, .9],
              )),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
