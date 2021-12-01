import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  final String description;
  final int quantity;

  const ProductInfo({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.quantity,
  }) : super(key: key);

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
              Text(price.toString() + " TND", textScaleFactor: 2),
            ],
          )
        ],
      ),
    );
  }
}
