import 'dart:convert';

List<Product> productFromJson(String str) {
  final List<dynamic> jsonString = json.decode(str) as List<dynamic>;
  final List<Product> products = <Product>[];
  for (final e in jsonString) {
    products.add(Product.fromJson(e));
  }
  return products;
}

class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.location,
    required this.user,
    required this.halal,
    required this.weight,
  });

  String id;
  String title;
  String price;
  String location;
  String user;
  String halal;
  String weight;

  factory Product.fromJson(dynamic json) => Product(
        id: json["id"] as String,
        title: json["title"] as String,
        price: json["price"] as String,
        location: json["location_name"] as String,
        user: json["user"]["user_name"] as String,
        halal: json["is_halal"] as String,
        weight: json["weight"] as String,
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "title": title,
        "location_name": location,
        "is_halal": halal,
        "weight": weight,
        "user": user,
      };
}
