import 'package:crypto/screens/coin_screen.dart';
import 'package:crypto/utils/const.dart';
import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  final coin;

  Coin({Key? key, required this.coin});

  @override
  Widget build(BuildContext context) {
    var name = coin['name'];
    var image = coin['image'];
    var priceChange = coin['price_change_percentage_24h'];

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CoinScreen(coin: coin);
        }));
      },
      child: Container(
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
      ),
    );
  }
}
