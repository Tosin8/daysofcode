import 'package:flutter/material.dart';

class BuyBtnWidget extends StatelessWidget {
  const BuyBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 40,
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Buy Ticket',
              style: TextStyle(color: Colors.white),
            )));
  }
}
