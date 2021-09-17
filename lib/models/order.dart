import 'package:twiscode_test/models/product.dart';

class Order extends Product {
  Order(this.id, this.title, this.price, this.location, this.user, this.halal,
      this.weight, this.itemCount)
      : super(
            id: id,
            title: title,
            price: price,
            location: location,
            user: user,
            halal: halal,
            weight: weight);

  String id;
  String title;
  String price;
  String location;
  String user;
  String halal;
  String weight;
  double itemCount;

  double getTotalWeight() {
    return itemCount * double.parse(weight);
  }

  int getTotalPrice() {
    return itemCount.round() * int.parse(price);
  }

  void increase() {
    itemCount++;
  }

  void decrease() {
    if (itemCount > 1) {
      itemCount--;
    }
  }
}
