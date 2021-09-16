import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1563114773-84221bd62daa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Semangka Segar Sekali Beli Satu Gratis Lima",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.blue.shade900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rp. 20.000",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Surabaya",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Hendrawan",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "Ready Stock",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage("assets/images/halal.png"),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
