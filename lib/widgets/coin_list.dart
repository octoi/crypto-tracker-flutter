import 'package:crypto/widgets/coin.dart';
import 'package:flutter/material.dart';

class CoinList extends StatelessWidget {
  final List coins;

  const CoinList({Key? key, required this.coins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: coins.map((coin) {
        return Coin(coin: coin);
      }).toList(),
    );
  }
}
