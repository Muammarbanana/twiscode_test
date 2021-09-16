import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:twiscode_test/views/producttile.dart';

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Daftar Produk",
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
            Expanded(
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                  ),
                  itemCount: 300,
                  itemBuilder: (BuildContext context, int index) {
                    return const ProductTile();
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.list_rounded),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.blue.shade900),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.filter_list_rounded),
                    Text(
                      "Filter",
                      style: TextStyle(color: Colors.blue.shade900),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
