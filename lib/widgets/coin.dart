import 'package:crypto/utils/const.dart';
import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  final name;
  final price;
  final priceChange;
  final image;

  const Coin({Key? key, this.name, this.price, this.priceChange, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: appSecondaryColor,
      ),
      child: ListTile(
        leading: Image.network(image, height: 30.0),
        title: Text(name, style: TextStyle(color: appWhite, fontSize: 20.0)),
        trailing: Text(
          '$priceChange',
          style: TextStyle(
            color: priceChange < 0 ? appRed : appGreen,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
