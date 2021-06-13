import 'package:crypto/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function onChange;

  const SearchBar({Key? key, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: appSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: appSecondaryColor,
          filled: true,
          border: InputBorder.none,
          hintText: 'search',
          hintStyle: TextStyle(color: appWhite, fontSize: 18.0),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: appWhite,
            size: 20.0,
          ),
        ),
        style: TextStyle(color: appWhite),
        onChanged: (String text) {
          onChange(text);
        },
      ),
    );
  }
}
