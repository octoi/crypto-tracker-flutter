import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:crypto/utils/const.dart';

getAllCoins() async {
  var url = Uri.parse(apiUrl);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var decodedData = jsonDecode(response.body);
    return decodedData;
  }
}
