import 'package:crypto/utils/api.dart';
import 'package:crypto/utils/const.dart';
import 'package:crypto/widgets/SearchBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _coins;

  void getCoins() async {
    var _coinData = await getAllCoins();
    setState(() => _coins = _coinData);
    print(_coins);
  }

  @override
  void initState() {
    super.initState();
    getCoins();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SearchBar(onChange: (e) {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
