import 'package:crypto/widgets/coin.dart';
import 'package:flutter/material.dart';

class CoinList extends StatelessWidget {
  final List coins;

  const CoinList({Key? key, required this.coins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: coins.map((coin) {
        return Coin(
          name: coin['name'],
          price: coin['price'],
          image: coin['image'],
          priceChange: coin['price_change_percentage_24h'],
        );
      }).toList(),
    );
  }
}
