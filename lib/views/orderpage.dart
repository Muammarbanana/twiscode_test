import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twiscode_test/models/product.dart';
import 'package:twiscode_test/views/items_layout/ordertile.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  var orderList = Get.arguments as List<Product>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_rounded),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Text(
                      "Pesanan",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            showMainOrderLayout(orderList),
            Visibility(
              visible: orderList.isNotEmpty,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0.0, -5.0),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Harga",
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 18),
                            ),
                            const Text(
                              "Rp. 200.000",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            primary: Colors.amber,
                          ),
                          child: const Text("Order"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showMainOrderLayout(List<Product> orderList) {
    if (orderList.isEmpty) {
      return const Expanded(
        child: Center(
          child: Text(
            "Anda belum memesan apa pun",
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Produk yang akan Anda pesan",
              style: TextStyle(
                color: Colors.blue.shade900,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (BuildContext context, int index) {
                return OrderTile(orderList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
