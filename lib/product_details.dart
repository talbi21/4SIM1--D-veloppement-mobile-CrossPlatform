import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String _image;
  final String _title;
  final String _description;
  final int _price;
  final int _quantity;

  // ignore: use_key_in_widget_constructors
  const ProductDetails(
      this._image, this._title, this._description, this._price, this._quantity);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late int _currentQuantity;

  @override
  void initState() {
    _currentQuantity = widget._quantity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Image.asset(widget._image, width: 460, height: 215)),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget._description),
          ),
          Text(widget._price.toString() + " TND", textScaleFactor: 3),
          Text("Exemplaires disponibles : " + _currentQuantity.toString()),
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
                  _currentQuantity--;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
