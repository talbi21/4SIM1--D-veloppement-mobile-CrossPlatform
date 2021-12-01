import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final int price;
  final int quantity;
  const ProductDetails({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late int currentQuantity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentQuantity = widget.quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Image.asset(widget.image, width: 460, height: 215)),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget.description),
          ),
          Text(widget.price.toString() + " TND", textScaleFactor: 3),
          Text("Exemplaires disponibles : " + currentQuantity.toString()),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.shopping_basket_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Acheter", textScaleFactor: 2)
                ],
              ),
              onPressed: () {
                setState(() {
                  currentQuantity--;
                });
                print(currentQuantity);
              },
            ),
          )
        ],
      ),
    );
  }
}
