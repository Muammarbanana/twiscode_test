import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  "Product List",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Badge(
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
