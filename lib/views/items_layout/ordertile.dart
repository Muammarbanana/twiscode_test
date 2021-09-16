import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 58,
                width: 58,
                child: Hero(
                  tag: "",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/semangka.jpeg"),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Semangka Segar Sekali Beli Satu Gratis Lima",
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
                          children: const [
                            Text(
                              "Rp. 10.000",
                              style: TextStyle(color: Colors.orange),
                            ),
                            Text(
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
                              "1.0 kg",
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
