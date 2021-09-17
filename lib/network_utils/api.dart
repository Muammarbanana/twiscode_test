import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:twiscode_test/models/product.dart';

// ignore: avoid_classes_with_only_static_members
class Api {
  static http.Client client = http.Client();

  static Future<dynamic> getProduct() async {
    final response = await client.post(Uri.parse(
        'https://ranting.twisdev.com/index.php/rest/items/search/api_key/teampsisthebest/'));
    final jsonBody = response.body;
    if (response.statusCode == 200) {
      return productFromJson(jsonBody);
    } else {
      final decodedJson = json.decode(jsonBody);
      return decodedJson['message'] as String;
    }
  }
}
