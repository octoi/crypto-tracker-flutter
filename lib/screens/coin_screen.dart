import 'package:crypto/utils/const.dart';
import 'package:flutter/material.dart';

class CoinScreen extends StatelessWidget {
  final coin;

  const CoinScreen({Key? key, this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = coin['name'];
    var image = coin['image'];
    var price = coin['current_price'];
    var symbol = coin['symbol'];
    var priceChange = coin['price_change_percentage_24h'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: appPrimaryColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50.0),
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(image, height: 100.0),
              SizedBox(height: 15.0),
              Text(name, style: TextStyle(color: appWhite, fontSize: 40.0)),
              Text(symbol, style: TextStyle(color: appWhite, fontSize: 20.0)),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹$price',
                    style: TextStyle(color: appWhite, fontSize: 18.0),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '$priceChange',
                    style: TextStyle(
                      color: priceChange < 0 ? appRed : appGreen,
                      fontSize: 18.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
