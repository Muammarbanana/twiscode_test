import 'package:http/http.dart' as http;
import 'package:twiscode_test/models/product.dart';

// ignore: avoid_classes_with_only_static_members
class Api {
  static http.Client client = http.Client();

  static Future<List<Product>?> getProduct() async {
    final response = await client.post(Uri.parse(
        'https://ranting.twisdev.com/index.php/rest/items/search/api_key/teampsisthebest/'));
    if (response.statusCode == 200) {
      final jsonBody = response.body;
      return productFromJson(jsonBody);
    } else {
      return null;
    }
  }
}
