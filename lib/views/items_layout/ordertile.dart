import 'package:flutter/material.dart';
import 'package:twiscode_test/models/order.dart';

class OrderTile extends StatefulWidget {
  final Order product;
  const OrderTile(this.product);

  @override
  _OrderTileState createState() => _OrderTileState();
}

class _OrderTileState extends State<OrderTile> {
  @override
  Widget build(BuildContext context) {
    String weight = widget.product.weight;
    if (weight == "") {
      weight = "0";
    }
    double totalWeight = widget.product.getTotalWeight();
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
                      widget.product.title,
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
                              widget.product.price,
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
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    widget.product.decrease();
                                    setState(() {});
                                  },
                                  child: const Icon(
                                    Icons.indeterminate_check_box_rounded,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(widget.product.itemCount
                                    .round()
                                    .toString()),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {
                                    widget.product.increase();
                                    setState(() {});
                                  },
                                  child: const Icon(
                                    Icons.add_box_rounded,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "$totalWeight kg",
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
