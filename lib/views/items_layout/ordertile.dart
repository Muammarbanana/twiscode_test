import 'package:flutter/material.dart';
import 'package:twiscode_test/models/product.dart';

class OrderTile extends StatelessWidget {
  final Product product;
  const OrderTile(this.product);

  @override
  Widget build(BuildContext context) {
    String weight = product.weight;
    if (weight == "") {
      weight = "0";
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/semangka.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.blue.shade900,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.price,
                              style: const TextStyle(color: Colors.orange),
                            ),
                            const Text(
                              "(Baru)",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.indeterminate_check_box_rounded,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 5),
                                Text("2"),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green,
                                )
                              ],
                            ),
                            Text(
                              "$weight kg",
                              style: TextStyle(color: Colors.blue.shade900),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
