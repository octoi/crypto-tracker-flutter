import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  final name;
  final price;
  final priceChange;
  final image;

  const Coin({Key? key, this.name, this.price, this.priceChange, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(name)],
    );
  }
}
