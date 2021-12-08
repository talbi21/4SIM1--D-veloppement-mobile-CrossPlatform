import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final int price;
  final int quantity;

  // ignore: use_key_in_widget_constructors
  const ProductInfo(
      this.image, this.title, this.description, this.price, this.quantity);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Image.asset(image, width: 200, height: 94),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              const SizedBox(
                height: 10,
              ),
              Text(price.toString() + " TND", textScaleFactor: 2)
            ],
          )
        ],
      ),
    );
  }
}
