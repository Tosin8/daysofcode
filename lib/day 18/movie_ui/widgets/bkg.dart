import 'package:flutter/material.dart';

class BkgWidget extends StatelessWidget {
  const BkgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      reverse: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
