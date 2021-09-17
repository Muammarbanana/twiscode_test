import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twiscode_test/controllers/productscontroller.dart';
import 'package:twiscode_test/models/product.dart';
import 'package:twiscode_test/views/orderpage.dart';
import 'package:twiscode_test/views/items_layout/producttile.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ProductController productController = Get.put(ProductController());
  List<Product> orders = <Product>[].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0.0, 5.0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Daftar Produk",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const OrderPage(), arguments: orders);
                    },
                    child: Obx(
                      () => Badge(
                        showBadge: (orders.isEmpty) ? false : true,
                        badgeContent: Text(
                          orders.length.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: Obx(
                  () => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: productController.listProduct.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Material(
                        child: InkWell(
                            splashColor: Colors.grey,
                            onTap: () {
                              final productitem =
                                  productController.listProduct[index];
                              if (!orders.contains(productitem)) {
                                orders
                                    .add(productController.listProduct[index]);
                              }
                            },
                            child: ProductTile(
                                productController.listProduct[index])),
                      );
                    },
                  ),
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
